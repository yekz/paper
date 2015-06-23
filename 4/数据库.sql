-- phpMyAdmin SQL Dump
-- version 4.4.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-06-11 15:11:59
-- 服务器版本： 10.0.19-MariaDB
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yekezhon_56daxue`
--

-- --------------------------------------------------------

--
-- 表的结构 `shop_action`
--

CREATE TABLE IF NOT EXISTS `shop_action` (
  `id` int(11) unsigned NOT NULL COMMENT '主键',
  `name` char(30) NOT NULL COMMENT '行为唯一标识',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '行为说明',
  `remark` char(140) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `status` tinyint(2) NOT NULL COMMENT '状态（-1：已删除，0：禁用，1：正常）',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统行为表';

--
-- 转存表中的数据 `shop_action`
--

INSERT INTO `shop_action` (`id`, `name`, `title`, `remark`, `rule`, `status`, `update_time`) VALUES
(1, 'user_login', '用户登录', '积分+10，每天一次', 'table:member|field:score|condition:uid={$self} AND status>-1|rule:9-2+3+score*1/1|cycle:24|max:1;', 1, 1377681235),
(2, 'add_article', '购买商品', '积分+5，每天上限5次', 'table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max|5', 1, 1431921250),
(3, 'review', '评论', '评论积分+2', 'table:member|field:score|condition:uid={$self}|rule:score+1|cycle:24|max|5', 1, 1379150556);

-- --------------------------------------------------------

--
-- 表的结构 `shop_action_log`
--

CREATE TABLE IF NOT EXISTS `shop_action_log` (
  `id` int(10) unsigned NOT NULL COMMENT '主键',
  `action_id` int(10) unsigned NOT NULL COMMENT '行为id',
  `user_id` int(10) unsigned NOT NULL COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` char(50) NOT NULL COMMENT '触发行为的表',
  `record_id` int(10) NOT NULL COMMENT '触发行为的数据id',
  `create_time` int(10) unsigned NOT NULL COMMENT '执行行为的时间'
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

--
-- 转存表中的数据 `shop_action_log`
--

INSERT INTO `shop_action_log` (`id`, `action_id`, `user_id`, `action_ip`, `model`, `record_id`, `create_time`) VALUES
(1, 1, 1, 2130706433, 'member', 1, 1379514769),
(2, 1, 20, 0, 'member', 20, 1380510541),
(3, 1, 18, 2130706433, 'member', 18, 1380513014),
(4, 1, 18, 2130706433, 'member', 18, 1380513328),
(5, 1, 17, 2130706433, 'member', 17, 1380612672),
(6, 1, 17, 2130706433, 'member', 17, 1380613439),
(7, 1, 17, 2130706433, 'member', 17, 1380613450),
(8, 1, 17, 2130706433, 'member', 17, 1380613461),
(9, 1, 17, 2130706433, 'member', 17, 1380613474),
(10, 1, 22, 2130706433, 'member', 22, 1380614848),
(11, 1, 22, 2130706433, 'member', 22, 1380614916),
(12, 1, 22, 2130706433, 'member', 22, 1380616788),
(13, 1, 22, 2130706433, 'member', 22, 1380618609),
(14, 1, 22, 2130706433, 'member', 22, 1380619156),
(15, 1, 22, 2130706433, 'member', 22, 1380619267),
(16, 1, 22, 2130706433, 'member', 22, 1380619334),
(17, 1, 22, 2130706433, 'member', 22, 1380619366),
(18, 1, 22, 2130706433, 'member', 22, 1380619413),
(19, 1, 22, 2130706433, 'member', 22, 1380620265),
(20, 1, 22, 2130706433, 'member', 22, 1380620357),
(21, 1, 22, 2130706433, 'member', 22, 1380620500),
(22, 1, 22, 2130706433, 'member', 22, 1380622819),
(23, 1, 22, 2130706433, 'member', 22, 1380623437),
(24, 1, 22, 2130706433, 'member', 22, 1380623501),
(25, 1, 22, 2130706433, 'member', 22, 1380623579),
(26, 1, 22, 2130706433, 'member', 22, 1380623617),
(27, 1, 22, 2130706433, 'member', 22, 1380624635),
(28, 1, 22, 2130706433, 'member', 22, 1380624846),
(29, 1, 22, 2130706433, 'member', 22, 1380626095),
(30, 1, 22, 2130706433, 'member', 22, 1380626833),
(31, 1, 22, 2130706433, 'member', 22, 1380626893),
(32, 1, 22, 2130706433, 'member', 22, 1380771533),
(33, 1, 22, 2130706433, 'member', 22, 1380771575),
(34, 1, 22, 2130706433, 'member', 22, 1380771646),
(35, 1, 22, 2130706433, 'member', 22, 1380771778),
(36, 1, 22, 2130706433, 'member', 22, 1380771812),
(37, 1, 23, 2130706433, 'member', 23, 1381138980),
(38, 1, 23, 2130706433, 'member', 23, 1381201399),
(39, 1, 23, 2130706433, 'member', 23, 1381221733),
(40, 1, 24, 2130706433, 'member', 24, 1381237140),
(41, 1, 24, 2130706433, 'member', 24, 1381241176),
(42, 1, 24, 2130706433, 'member', 24, 1381326075),
(43, 1, 24, 2130706433, 'member', 24, 1381550657),
(44, 1, 24, 2130706433, 'member', 24, 1381558397),
(45, 1, 24, 2130706433, 'member', 24, 1381657690),
(46, 1, 17, 2130706433, 'member', 17, 1431919763),
(47, 1, 32, 2130706433, 'member', 32, 1431937835),
(48, 1, 1, 2130706433, 'member', 1, 1431939153),
(49, 1, 32, 2130706433, 'member', 32, 1433915561);

-- --------------------------------------------------------

--
-- 表的结构 `shop_addons`
--

CREATE TABLE IF NOT EXISTS `shop_addons` (
  `id` int(10) unsigned NOT NULL COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '插件名或标识，区分大小写',
  `title` varchar(20) NOT NULL COMMENT '中文名',
  `description` text COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1-启用 0-禁用 -1-损坏',
  `config` text COMMENT '配置 序列化存放',
  `author` varchar(40) DEFAULT NULL COMMENT '作者',
  `version` varchar(20) DEFAULT NULL COMMENT '版本号',
  `create_time` int(10) unsigned NOT NULL COMMENT '安装时间',
  `has_adminlist` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1-有后台列表 0-无后台列表'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='插件表';

--
-- 转存表中的数据 `shop_addons`
--

INSERT INTO `shop_addons` (`id`, `name`, `title`, `description`, `status`, `config`, `author`, `version`, `create_time`, `has_adminlist`) VALUES
(1, 'EditorForAdmin', '后台编辑器', '用于增强整站长文本的输入和显示', 1, '{"editor_type":"2","editor_wysiwyg":"1","editor_height":"500px","editor_resize_type":"1"}', 'thinkphp', '0.1', 1379511996, 0),
(2, 'SiteStat', '站点统计信息', '统计站点的基础信息', 1, '{"title":"\\u7cfb\\u7edf\\u4fe1\\u606f","width":"1","display":"1","status":"0"}', 'thinkphp', '0.1', 1379512015, 0),
(4, 'SystemInfo', '系统环境信息', '用于显示一些服务器的信息', 1, '{"title":"\\u7cfb\\u7edf\\u4fe1\\u606f","width":"2","display":"1"}', 'thinkphp', '0.1', 1379512036, 0),
(5, 'Editor', '前台编辑器', '用于增强整站长文本的输入和显示', 1, '{"editor_type":"2","editor_wysiwyg":"1","editor_height":"300px","editor_resize_type":"1"}', 'thinkphp', '0.1', 1380511275, 0),
(6, 'Attachment', '附件', '用于文档模型上传附件', 1, '{"status":"1"}', 'thinkphp', '0.1', 1380511278, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_attachment`
--

CREATE TABLE IF NOT EXISTS `shop_attachment` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` char(30) NOT NULL COMMENT '附件显示名',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件类型（0-目录，1-外链，2-文件）',
  `source` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '资源ID（0-目录， 大于0-当资源为文件时其值为file_id,当资源为外链时其值为link_id）',
  `record_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联记录ID',
  `download` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '附件大小（当附件为目录或外链时，该值为0）',
  `dir` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '上级目录ID（0-根目录）',
  `sort` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_auth_category_access`
--

CREATE TABLE IF NOT EXISTS `shop_auth_category_access` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `category_id` mediumint(8) unsigned NOT NULL COMMENT '栏目id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组与分类的对应关系表';

--
-- 转存表中的数据 `shop_auth_category_access`
--

INSERT INTO `shop_auth_category_access` (`group_id`, `category_id`) VALUES
(2, 1),
(2, 2),
(2, 12),
(2, 13),
(3, 1),
(3, 14);

-- --------------------------------------------------------

--
-- 表的结构 `shop_auth_group`
--

CREATE TABLE IF NOT EXISTS `shop_auth_group` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户组表';

--
-- 转存表中的数据 `shop_auth_group`
--

INSERT INTO `shop_auth_group` (`id`, `module`, `type`, `title`, `description`, `status`, `rules`) VALUES
(1, 'admin', 1, '系统管理员', '', 1, ''),
(2, 'admin', 1, '大学管理员', '', 1, '1,2,6,7,8,9,10,11,12,13,14,15,16,17,18,19'),
(3, 'admin', 1, '注册用户', '', 1, '1,2,6,7,8,10,11,12,13,14,15,16,17,18,19,76,77,78');

-- --------------------------------------------------------

--
-- 表的结构 `shop_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `shop_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户与用户组的对应关系表';

--
-- 转存表中的数据 `shop_auth_group_access`
--

INSERT INTO `shop_auth_group_access` (`uid`, `group_id`) VALUES
(20, 3),
(21, 1),
(22, 2),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3);

-- --------------------------------------------------------

--
-- 表的结构 `shop_auth_rule`
--

CREATE TABLE IF NOT EXISTS `shop_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件'
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='认证规则表表';

--
-- 转存表中的数据 `shop_auth_rule`
--

INSERT INTO `shop_auth_rule` (`id`, `module`, `type`, `name`, `title`, `status`, `condition`) VALUES
(1, 'admin', 2, 'Admin/Index/index', '首页', 1, ''),
(2, 'admin', 2, 'Admin/Article/mydocument', '商品', 1, ''),
(3, 'admin', 2, 'Admin/User/index', '用户', 1, ''),
(4, 'admin', 2, 'Admin/Addons/index', '扩展', 1, ''),
(5, 'admin', 2, 'Admin/Config/group', '系统', 1, ''),
(6, 'admin', 1, 'Admin/Index/index', '管理首页', 1, ''),
(7, 'admin', 1, 'Admin/article/add', '新增', 1, ''),
(8, 'admin', 1, 'Admin/article/edit', '编辑', 1, ''),
(9, 'admin', 1, 'Admin/article/setStatus', '改变状态', 1, ''),
(10, 'admin', 1, 'Admin/article/update', '保存', 1, ''),
(11, 'admin', 1, 'Admin/article/autoSave', '保存草稿', 1, ''),
(12, 'admin', 1, 'Admin/article/move', '移动', 1, ''),
(13, 'admin', 1, 'Admin/article/copy', '复制', 1, ''),
(14, 'admin', 1, 'Admin/article/paste', '粘贴', 1, ''),
(15, 'admin', 1, 'Admin/article/permit', '还原', 1, ''),
(16, 'admin', 1, 'Admin/article/clear', '清空', 1, ''),
(17, 'admin', 1, 'Admin/article/index', '文档列表', 1, ''),
(18, 'admin', 1, 'Admin/article/draftbox', '草稿箱', 1, ''),
(19, 'admin', 1, 'Admin/article/recycle', '回收站', 1, ''),
(20, 'admin', 1, 'Admin/user/addAction', '新增用户行为', 1, ''),
(21, 'admin', 1, 'Admin/user/editAction', '编辑用户行为', 1, ''),
(22, 'admin', 1, 'Admin/user/saveAction', '保存用户行为', 1, ''),
(23, 'admin', 1, 'Admin/user/setStatus', '变更行为状态', 1, ''),
(24, 'admin', 1, 'Admin/user/changeStatus?method=forbidUser', '禁用会员', 1, ''),
(25, 'admin', 1, 'Admin/user/changeStatus?method=resumeUser', '启用会员', 1, ''),
(26, 'admin', 1, 'Admin/user/changeStatus?method=deleteUser', '删除会员', 1, ''),
(27, 'admin', 1, 'Admin/User/index', '用户列表', 1, ''),
(28, 'admin', 1, 'Admin/User/action', '用户行为', 1, ''),
(29, 'admin', 1, 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', 1, ''),
(30, 'admin', 1, 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', 1, ''),
(31, 'admin', 1, 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', 1, ''),
(32, 'admin', 1, 'Admin/AuthManager/createGroup', '新增', 1, ''),
(33, 'admin', 1, 'Admin/AuthManager/editGroup', '编辑', 1, ''),
(34, 'admin', 1, 'Admin/AuthManager/writeGroup', '保存用户组', 1, ''),
(35, 'admin', 1, 'Admin/AuthManager/group', '授权', 1, ''),
(36, 'admin', 1, 'Admin/AuthManager/access', '访问授权', 1, ''),
(37, 'admin', 1, 'Admin/AuthManager/user', '成员授权', 1, ''),
(38, 'admin', 1, 'Admin/AuthManager/removeFromGroup', '解除授权', 1, ''),
(39, 'admin', 1, 'Admin/AuthManager/addToGroup', '保存成员授权', 1, ''),
(40, 'admin', 1, 'Admin/AuthManager/category', '分类授权', 1, ''),
(41, 'admin', 1, 'Admin/AuthManager/addToCategory', '保存分类授权', 1, ''),
(42, 'admin', 1, 'Admin/AuthManager/index', '权限管理', 1, ''),
(43, 'admin', 1, 'Admin/Addons/create', '创建', 1, ''),
(44, 'admin', 1, 'Admin/Addons/checkForm', '检测创建', 1, ''),
(45, 'admin', 1, 'Admin/Addons/preview', '预览', 1, ''),
(46, 'admin', 1, 'Admin/Addons/build', '快速生成插件', 1, ''),
(47, 'admin', 1, 'Admin/Addons/config', '设置', 1, ''),
(48, 'admin', 1, 'Admin/Addons/disable', '禁用', 1, ''),
(49, 'admin', 1, 'Admin/Addons/enable', '启用', 1, ''),
(50, 'admin', 1, 'Admin/Addons/install', '安装', 1, ''),
(51, 'admin', 1, 'Admin/Addons/uninstall', '卸载', 1, ''),
(52, 'admin', 1, 'Admin/Addons/saveconfig', '更新配置', 1, ''),
(53, 'admin', 1, 'Admin/Addons/adminList', '插件后台列表', 1, ''),
(54, 'admin', 1, 'Admin/Addons/execute', 'URL方式访问插件', 1, ''),
(55, 'admin', 1, 'Admin/Addons/index', '插件管理', 1, ''),
(56, 'admin', 1, 'Admin/Addons/hooks', '钩子管理', 1, ''),
(57, 'admin', 1, 'Admin/model/add', '新增', 1, ''),
(58, 'admin', 1, 'Admin/model/edit', '编辑', 1, ''),
(59, 'admin', 1, 'Admin/model/setStatus', '改变状态', 1, ''),
(60, 'admin', 1, 'Admin/model/update', '保存数据', 1, ''),
(61, 'admin', 1, 'Admin/Model/index', '模型管理', 1, ''),
(62, 'admin', 1, 'Admin/Config/edit', '编辑', 1, ''),
(63, 'admin', 1, 'Admin/Config/del', '删除', 1, ''),
(64, 'admin', 1, 'Admin/Config/add', '新增', 1, ''),
(65, 'admin', 1, 'Admin/Config/save', '保存', 1, ''),
(66, 'admin', 1, 'Admin/Config/group', '网站设置', 1, ''),
(67, 'admin', 1, 'Admin/Config/index', '配置管理', 1, ''),
(68, 'admin', 1, 'Admin/Channel/add', '新增', 1, ''),
(69, 'admin', 1, 'Admin/Channel/edit', '编辑', 1, ''),
(70, 'admin', 1, 'Admin/Channel/del', '删除', 1, ''),
(71, 'admin', 1, 'Admin/Channel/index', '导航管理', 1, ''),
(72, 'admin', 1, 'Admin/Category/edit', '编辑', 1, ''),
(73, 'admin', 1, 'Admin/Category/add', '新增', 1, ''),
(74, 'admin', 1, 'Admin/Category/remove', '删除', 1, ''),
(75, 'admin', 1, 'Admin/Category/index', '分类管理', 1, ''),
(76, 'admin', 1, 'Admin/file/upload', '上传控件', 1, ''),
(77, 'admin', 1, 'Admin/file/uploadPicture', '上传图片', 1, ''),
(78, 'admin', 1, 'Admin/file/download', '下载', 1, ''),
(79, 'admin', 2, 'Admin/Orderform/index', '订单', 1, ''),
(80, 'admin', 1, 'Admin/orderform/index', '待处理', 1, ''),
(81, 'admin', 1, 'Admin/orderform/send', '派送中', 1, ''),
(82, 'admin', 1, 'Admin/orderform/finish', '完成订单', 1, ''),
(83, 'admin', 1, 'Admin/orderform/canceled', '关闭的订单', 1, ''),
(84, 'admin', 1, 'Admin/User/detail', '用户信息', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `shop_cart`
--

CREATE TABLE IF NOT EXISTS `shop_cart` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL COMMENT '用户ID',
  `gid` int(10) NOT NULL COMMENT '商品ID',
  `number` int(3) NOT NULL COMMENT '商品数量',
  `time` int(10) NOT NULL COMMENT '添加时间',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='购物车表';

--
-- 转存表中的数据 `shop_cart`
--

INSERT INTO `shop_cart` (`id`, `uid`, `gid`, `number`, `time`, `status`) VALUES
(8, 23, 13, 1, 1381221101, 1),
(20, 24, 13, 3, 1381550657, 1),
(21, 24, 11, 1, 1381657690, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(16) NOT NULL COMMENT '标识',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `secondhand` int(1) NOT NULL DEFAULT '0' COMMENT '是否为二手商品',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL COMMENT '关联模型',
  `type` varchar(100) NOT NULL COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链（0-非外链，大于0-外链ID）',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容（0-不允许，1-允许）',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性（0-所有人可见，1-管理员可见，2-不可见）',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `reply_model` varchar(100) NOT NULL,
  `reply_type` varchar(100) NOT NULL,
  `extend` text NOT NULL COMMENT '扩展设置（JSON数据）',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态（-1-删除，0-禁用，1-正常，2-待审核）'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='分类表';

--
-- 转存表中的数据 `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `title`, `pid`, `secondhand`, `sort`, `list_row`, `meta_title`, `keywords`, `description`, `template_index`, `template_lists`, `template_detail`, `template_edit`, `model`, `type`, `link_id`, `allow_publish`, `display`, `reply`, `reply_model`, `reply_type`, `extend`, `create_time`, `update_time`, `status`) VALUES
(1, '四川理工学院', '四川理工学院', 0, 0, 0, 10, '', '', '', '', '', '', '', '1', '2', 0, 1, 1, 0, '1', '2', '', 1380850237, 1381127056, 1),
(2, '56zy', '56自营', 1, 0, 0, 10, '', '', '', '', '', '', '', '1', '2', 0, 1, 1, 0, '1', '2', '', 1380850415, 1381127074, 1),
(12, 'xs', '香水', 2, 0, 0, 10, '', '', '', '', '', '', '', '1', '2', 0, 1, 1, 0, '1', '2', '', 1380873612, 1380873612, 1),
(14, 'second-hand', '二手市场', 1, 1, 0, 10, '', '', '', '', '', '', 'Article/editSecondHand', '1', '2', 0, 1, 1, 1, '1', '2', '', 1381127156, 1381407233, 1),
(15, '四川大学', '四川大学', 0, 0, 0, 10, '', '', '', '', '', '', '', '1,2,6', '2', 0, 1, 0, 0, '1', '2', '', 1431916064, 1431916096, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_channel`
--

CREATE TABLE IF NOT EXISTS `shop_channel` (
  `id` int(10) unsigned NOT NULL COMMENT '频道ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级频道ID',
  `title` char(30) NOT NULL COMMENT '频道标题',
  `url` char(100) NOT NULL COMMENT '频道连接',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='频道表';

--
-- 转存表中的数据 `shop_channel`
--

INSERT INTO `shop_channel` (`id`, `pid`, `title`, `url`, `sort`, `create_time`, `update_time`, `status`) VALUES
(1, 0, '首页', 'Index/index', 0, 1379475111, 1379475111, 1),
(2, 0, '自营', 'Article/index?category=blog', 0, 1379475131, 1380511130, 1),
(3, 0, '二手', 'Article/index?category=topic', 0, 1379475154, 1380511142, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_config`
--

CREATE TABLE IF NOT EXISTS `shop_config` (
  `id` int(10) unsigned NOT NULL COMMENT '配置ID',
  `name` varchar(30) NOT NULL COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型（0-数字，1-字符，2-文本，3-数组，4-枚举，5-多选）',
  `title` varchar(50) NOT NULL COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组（0-无分组，1-基本设置）',
  `extra` varchar(255) NOT NULL COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL,
  `sort` smallint(3) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='配置表';

--
-- 转存表中的数据 `shop_config`
--

INSERT INTO `shop_config` (`id`, `name`, `type`, `title`, `group`, `extra`, `remark`, `create_time`, `update_time`, `status`, `value`, `sort`) VALUES
(1, 'WEB_SITE_TITLE', 1, '网站标题', 0, '', '网站标题前台显示标题', 1378898976, 1379235274, 1, '56大学网', 0),
(2, 'WEB_SITE_DESCRIPTION', 2, '网站描述', 0, '', '网站搜索引擎描述', 1378898976, 1379235841, 1, '56大学网', 1),
(3, 'WEB_SITE_KEYWORD', 2, '网站关键字', 0, '', '网站搜索引擎关键字', 1378898976, 1379235848, 1, '56大学网', 3),
(4, 'WEB_SITE_CLOSE', 4, '关闭站点', 0, '0:关闭,1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', 1378898976, 1379235296, 1, '1', 0),
(9, 'CONFIG_TYPE_LIST', 3, '配置类型列表', 3, '', '主要用于数据解析和页面表单的生成', 1378898976, 1379235348, 1, '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举', 0),
(10, 'WEB_SITE_ICP', 1, '网站备案号', 0, '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', 1378900335, 1379235859, 1, '', 4),
(11, 'DOCUMENT_POSITION', 3, '文档推荐位', 1, '', '文档推荐位，推荐到多个位置KEY值相加即可', 1379053380, 1379235329, 1, '1:列表页推荐\r\n2:频道页推荐\r\n4:网站首页推荐', 0),
(12, 'DOCUMENT_DISPLAY', 3, '文档可见性', 1, '', '文章可见性仅影响前台显示，后台不收影响', 1379056370, 1379235322, 1, '0:所有人可见\r\n1:仅注册会员可见\r\n2:仅管理员可见', 0),
(13, 'COLOR_STYLE', 4, '后台色系', 0, 'default_color:默认\r\nblue_color:紫罗兰', '后台颜色风格', 1379122533, 1379235904, 1, 'default_color', 5),
(20, 'CONFIG_GROUP_LIST', 3, '配置分组', 3, '', '配置分组', 1379228036, 1379312862, 1, '0:基本设置\r\n1:内容设置\r\n2:用户设置\r\n3:系统配置', 0),
(21, 'HOOKS_TYPE', 3, '钩子的类型', 3, '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', 1379313397, 1379313407, 1, '1:视图\r\n2:控制器', 0),
(22, 'AUTH_CONFIG', 3, 'Auth配置', 3, '', '自定义Auth.class.php类配置', 1379409310, 1379409564, 1, 'AUTH_ON:1\r\nAUTH_TYPE:1', 0),
(23, 'OPEN_DRAFTBOX', 4, '是否开启草稿功能', 1, '0:关闭草稿功能\r\n1:开启草稿功能\r\n', '新增文章时的草稿功能配置', 1379484332, 1379484591, 1, '1', 0),
(24, 'AOTUSAVE_DRAFT', 0, '自动保存草稿时间', 1, '', '自动保存草稿的时间间隔，单位：秒', 1379484574, 1379484574, 1, '60', 0),
(25, 'LIST_ROWS', 0, '后台每页记录数', 1, '', '后台数据每页显示记录数', 1379503896, 1379503896, 1, '15', 5),
(26, 'USER_ALLOW_REGISTER', 4, '是否允许用户注册', 2, '0:关闭注册\r\n1:允许注册', '是否开放用户注册', 1379504487, 1379504580, 1, '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `shop_document`
--

CREATE TABLE IF NOT EXISTS `shop_document` (
  `id` int(10) unsigned NOT NULL COMMENT '文档ID',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `sid` int(11) NOT NULL,
  `name` char(40) NOT NULL COMMENT '标识',
  `title` char(80) NOT NULL COMMENT '标题',
  `price` varchar(10) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存',
  `sold` int(10) NOT NULL DEFAULT '0' COMMENT '销售量',
  `category_id` int(10) unsigned NOT NULL COMMENT '所属分类',
  `description` char(140) NOT NULL COMMENT '描述',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属ID',
  `model_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容模型ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容类型（0-专辑，1-目录，2-主题，3-段落）',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '推荐位(1-列表推荐，2-频道页推荐，4-首页推荐，[同时推荐多个地方相加即可]）',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链（0-非外链，大于0-外链ID）',
  `cover_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '封面（0-无封面，大于0-封面图片ID）',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性（0-不可见，1-所有人可见）',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '截至时间（0-永久有效）',
  `attach` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附件数量',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览量',
  `comment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `extend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '扩展统计字段，根据需求自行使用',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '优先级（越高排序越靠前）',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态（-1-删除，0-禁用，1-正常，2-待审核，3-草稿）'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文档模型基础表';

--
-- 转存表中的数据 `shop_document`
--

INSERT INTO `shop_document` (`id`, `uid`, `sid`, `name`, `title`, `price`, `stock`, `sold`, `category_id`, `description`, `pid`, `model_id`, `type`, `position`, `link_id`, `cover_id`, `display`, `dateline`, `attach`, `view`, `comment`, `extend`, `level`, `create_time`, `update_time`, `status`) VALUES
(14, 24, 1, '', '华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机', '30', 0, 1, 14, '华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机', 0, 1, 2, 0, 0, 9, 0, 0, 0, 30, 0, 0, 0, 1381657521, 1381657521, 1),
(10, 1, 1, '', '红玫瑰情香水50ml', '25', 1, 0, 2, '美国贝珠香Aua紫*玫瑰情香水50ml。送女友首选。', 0, 1, 2, 0, 0, 1, 0, 0, 0, 34, 0, 0, 0, 1381127366, 1381127366, 1),
(15, 24, 1, '', '笔记本电脑', '10000.1', 0, 1, 14, '阿斯蒂芬撒', 0, 1, 0, 0, 0, 7, 0, 0, 0, 42, 0, 0, 0, 1381411966, 1381411966, 1),
(13, 1, 1, '', '捷安特自行车', '500', 0, 1, 14, '', 0, 1, 2, 0, 0, 3, 0, 0, 0, 84, 0, 0, 0, 1381136702, 1381136702, 1),
(11, 1, 1, '', '金士顿U盘8G', '32', 8, 2, 2, '金士顿8GU盘，CLASS4，传输速度稳定，测试本人Win7下写入速度大于6M每秒。', 0, 1, 2, 0, 0, 4, 0, 0, 0, 13, 0, 0, 0, 1381129723, 1381129723, 1),
(12, 1, 1, '', 'Edifier耳机粗线黑色', '5', 0, 2, 2, 'Edifier漫步者粗线黑色耳机，个人推荐商品。时候MP3、电脑、手机等听音乐。', 0, 1, 2, 0, 0, 5, 0, 0, 0, 30, 0, 0, 0, 1381131960, 1431939227, 1),
(16, 32, 1, '', '铅笔', '1', 1, 0, 1, '一只铅笔', 0, 1, 2, 0, 0, 11, 0, 0, 0, 3, 0, 0, 0, 1431938428, 1431938428, 1),
(17, 32, 1, '', '铅笔', '1', 1, 0, 14, '一只铅笔', 0, 1, 2, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 1431938689, 1431938689, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_document_model`
--

CREATE TABLE IF NOT EXISTS `shop_document_model` (
  `id` int(10) unsigned NOT NULL COMMENT '模型ID',
  `name` char(16) NOT NULL COMMENT '模型标识',
  `title` char(16) NOT NULL COMMENT '模型名称',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文档模型表';

--
-- 转存表中的数据 `shop_document_model`
--

INSERT INTO `shop_document_model` (`id`, `name`, `title`, `create_time`, `update_time`, `status`) VALUES
(1, 'Article', '商品', 0, 1381286481, 1),
(2, 'Download', '下载', 0, 0, 1),
(6, 'SecondHand', '二手商品', 1381286324, 1381286336, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_document_model_article`
--

CREATE TABLE IF NOT EXISTS `shop_document_model_article` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `parse` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容解析类型（0-html,1-ubb,2-markdown）',
  `content` text NOT NULL COMMENT '文章内容',
  `template` varchar(100) NOT NULL COMMENT '详情页显示模板'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型文章表';

--
-- 转存表中的数据 `shop_document_model_article`
--

INSERT INTO `shop_document_model_article` (`id`, `parse`, `content`, `template`) VALUES
(1, 0, '感谢大家使用OneThink！\r\nOneThink对我来说是一个比ThinkPHP更有意义的产品，因为她能让开发者和最终用户都能受益。作为一个开源产品，希望大家都能参与进来为OneThink添砖加瓦，OneThink团队一直都在致力于让OneThink更加优秀。现在，感谢您也参与其中。', ''),
(2, 0, '这是一条回复数据！', ''),
(11, 0, '<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;">金士顿8GU盘，CLASS4，传输速度稳定，测试本人Win7下写入速度大于6M每秒。</span>', ''),
(12, 0, '<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;">Edifier漫步者粗线黑色耳机，个人推荐商品。时候MP3、电脑、手机等听音乐。</span>', ''),
(13, 0, '捷安特二手车', ''),
(14, 0, '<p>\r\n	华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机\r\n<p>\r\n	华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机华为U8800PRO手机\r\n</p>', ''),
(4, 0, '这是一篇回复内容，祝贺OneThink发布！', ''),
(10, 0, '<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;">美国贝珠香Aua紫*玫瑰情香水50ml。送女友首选。</span>\r\n</p>\r\n<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;"><img src="/Uploads/Editor/2013-09-30/5248f0cf25841.jpg" alt="" /></span>\r\n</p>\r\n<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;"><img src="/Uploads/Editor/2013-09-30/5248f0e5309ad.jpg" alt="" /></span>\r\n</p>', ''),
(6, 0, ' 测试', ''),
(7, 0, '<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;">美国贝珠香Aua紫*玫瑰情香水50ml。送女友首选。</span> \r\n</p>\r\n<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;"><img src="/Uploads/Editor/2013-09-30/5248f0cf25841.jpg" alt="" /></span> \r\n</p>\r\n<p>\r\n	<span style="font-family:''Times New Roman'';font-size:medium;line-height:normal;background-color:#FFFFFF;"><img src="/Uploads/Editor/2013-09-30/5248f0e5309ad.jpg" alt="" /><br />\r\n</span> \r\n</p>', ''),
(8, 0, '', ''),
(9, 0, '<div class="maincon" style="margin:0px;padding:0px 10px;font-family:Tahoma, Arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;">\r\n	<span id="comp-paste-div-3176">捷安特二手山地车转让，配件齐全，性能很好，27速，前后双碟刹，可以试车。</span>\r\n</div>\r\n<p style="font-family:Tahoma, Arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;">\r\n	联系我时，请说是在58同城上看到的，谢谢！\r\n</p>', ''),
(15, 0, '<p>\r\n	&lt;script&gt;111&lt;/script&gt;\r\n</p>', ''),
(16, 0, '出售一直铅笔', ''),
(17, 0, '出售一只铅笔！', '');

-- --------------------------------------------------------

--
-- 表的结构 `shop_document_model_download`
--

CREATE TABLE IF NOT EXISTS `shop_document_model_download` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `parse` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '内容解析类型（0-html,1-ubb,2-markdown）',
  `content` text NOT NULL COMMENT '下载详细描述',
  `template` varchar(100) NOT NULL COMMENT '详情页显示模板',
  `file_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件ID',
  `download` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档模型下载表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_file`
--

CREATE TABLE IF NOT EXISTS `shop_file` (
  `id` int(10) unsigned NOT NULL COMMENT '文件ID',
  `name` char(30) NOT NULL COMMENT '原始文件名',
  `savename` char(20) NOT NULL COMMENT '保存名称',
  `savepath` char(30) NOT NULL COMMENT '文件保存路径',
  `ext` char(5) NOT NULL COMMENT '文件后缀',
  `mime` char(40) NOT NULL COMMENT '文件mime类型',
  `size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL COMMENT '文件md5',
  `sha1` char(40) NOT NULL COMMENT '文件 sha1编码',
  `location` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文件保存位置（0-本地，1-FTP）',
  `create_time` int(10) unsigned NOT NULL COMMENT '上传时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文件表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_hooks`
--

CREATE TABLE IF NOT EXISTS `shop_hooks` (
  `id` int(10) unsigned NOT NULL COMMENT '主键',
  `name` varchar(40) NOT NULL COMMENT '钩子名称',
  `description` text COMMENT '描述',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1-Controller 2-Widget',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '更新时间',
  `addons` varchar(255) DEFAULT NULL COMMENT '钩子挂载的插件 ''，''分割'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='系统钩子表';

--
-- 转存表中的数据 `shop_hooks`
--

INSERT INTO `shop_hooks` (`id`, `name`, `description`, `type`, `update_time`, `addons`) VALUES
(1, 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', 1, 0, ''),
(2, 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', 1, 0, ''),
(3, 'documentEditForm', '添加编辑表单的 扩展内容钩子', 1, 0, 'Attachment'),
(4, 'documentDetailAfter', '文档末尾显示', 1, 0, 'Attachment'),
(5, 'documentDetailBefore', '页面内容前显示用钩子', 1, 0, NULL),
(6, 'documentSaveComplete', '保存文档数据后的扩展钩子', 2, 0, 'Attachment'),
(7, 'documentEditFormContent', '添加编辑表单的内容显示钩子', 1, 0, 'Editor'),
(8, 'adminArticleEdit', '后台内容编辑页编辑器', 1, 1378982734, 'EditorForAdmin'),
(13, 'AdminIndex', '首页小格子个性化显示', 1, 1379402135, 'SiteStat,SystemInfo'),
(14, 'topicComment', '评论提交方式扩展钩子。', 1, 1379496194, 'Editor'),
(15, 'adminSecondHandArticleEdit', '后台二手商品编辑', 1, 1381405680, 'Editor');

-- --------------------------------------------------------

--
-- 表的结构 `shop_member`
--

CREATE TABLE IF NOT EXISTS `shop_member` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` char(16) NOT NULL COMMENT '昵称',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '性别（0-女，1-男）',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `qq` char(10) NOT NULL,
  `score` mediumint(8) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `login` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

--
-- 转存表中的数据 `shop_member`
--

INSERT INTO `shop_member` (`uid`, `nickname`, `sex`, `birthday`, `qq`, `score`, `login`, `reg_ip`, `reg_time`, `last_login_ip`, `last_login_time`, `status`) VALUES
(1, 'Administrator', 0, '0000-00-00', '', 10, 2, 0, 1380458614, 2130706433, 1431939153, 1),
(20, '', 0, '0000-00-00', '', 10, 1, 0, 1380510541, 0, 1380510541, 1),
(18, '', 0, '0000-00-00', '', 10, 2, 2130706433, 1380513014, 2130706433, 1380513328, 1),
(17, '', 0, '0000-00-00', '', 20, 6, 2130706433, 1380612672, 2130706433, 1431919763, 1),
(22, '', 0, '0000-00-00', '', 20, 27, 2130706433, 1380614848, 2130706433, 1380771812, 0),
(23, '', 0, '0000-00-00', '', 10, 3, 2130706433, 1381138980, 2130706433, 1381221733, 1),
(24, '', 0, '0000-00-00', '', 30, 6, 2130706433, 1381237140, 2130706433, 1381657690, 1),
(32, '', 0, '0000-00-00', '', 20, 2, 2130706433, 1431937835, 2130706433, 1433915561, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_orderform`
--

CREATE TABLE IF NOT EXISTS `shop_orderform` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `number` varchar(20) NOT NULL,
  `goods` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `money` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='订单表';

--
-- 转存表中的数据 `shop_orderform`
--

INSERT INTO `shop_orderform` (`id`, `uid`, `number`, `goods`, `address`, `money`, `status`, `time`) VALUES
(7, 23, '201310071744', '11,2|12,1|', '', '69', 1, 1381139073),
(8, 23, '201310081046', '12,1|10,1|', '', '30', 2, 1381200410),
(10, 23, '201310081134', '13,1,500|', '', '500', 1, 1381203288),
(11, 23, '201310081504', '13,1,500|12,2,5|', '', '510', 1, 1381215856),
(12, 24, '201310091356', '14,2,30|15,1,10000.1|12,23,5|10,20,25|', '', '10675.1', 1, 1381298200),
(13, 24, '201310091425', '12,1,5|14,1,30|', '', '35', 1, 1381299957),
(14, 24, '201310091427', '14,1,30|11,2,32|', '', '94', 1, 1381300035),
(15, 24, '201310092141', '12,1,5|', '<br/><br/>', '5', 1, 1381326093),
(16, 24, '201310092142', '12,1,5|', '叶科忠<br/><br/>汇南4-111', '5', 1, 1381326146),
(17, 17, '201505181150', '13,1,500|', '各走各路<br/>15609008651<br/>四川理工学院汇北校区4-xxx', '500', 1, 1431921058),
(18, 32, '201505181633', '15,1,10000.1|', '测试<br/>15894586511<br/>deyangshisonglingzhengdongguangcun18zhu', '10000.1', 3, 1431938034);

-- --------------------------------------------------------

--
-- 表的结构 `shop_picture`
--

CREATE TABLE IF NOT EXISTS `shop_picture` (
  `id` int(10) unsigned NOT NULL COMMENT '主键id自增',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL COMMENT '文件md5',
  `sha1` char(40) NOT NULL COMMENT '文件 sha1编码',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表';

--
-- 转存表中的数据 `shop_picture`
--

INSERT INTO `shop_picture` (`id`, `path`, `url`, `md5`, `sha1`, `status`, `create_time`) VALUES
(1, '/Uploads/Picture/2013-09-30/5248f0b2aa9c3.jpg', '', '5c45a5ca677fdae7a256b05a586289be', 'a399233689c66057900e26d49f16ca815c33d023', 1, 1380511921),
(2, '/Uploads/Picture/2013-09-30/5249180ce786a.png', '', '7fa26e5fa521f091b906044c4f9ae019', '86a96c5bd55ac0d9fdd18e687f86e73035ad8730', 1, 1380521995),
(3, '/Uploads/Picture/2013-10-03/524ceb692874e.jpg', '', '6b654c8acecca6c56425c3d7a09515a2', '4a884423ca9ea34fe2ef623026c53b08845b087b', 1, 1380772711),
(4, '/Uploads/Picture/2013-10-07/52525df72915b.jpg', '', '6c69e1aedaa26823ae64a19c5053dff6', 'c473925bc18a4e57adc2c7cf2f644e51ac74d5ba', 1, 1381129717),
(5, '/Uploads/Picture/2013-10-07/525266c877cf5.jpg', '', '770a1a4ce314be935c544bb55562e4e9', '6f05005c78bddc77ab31193d3efe85b0aacba81f', 1, 1381131975),
(6, '/Uploads/Picture/2013-10-08/5254073b22384.jpg', '', 'c865496726d50ccc90f56e5b7287e17b', 'b9d3157e9747250168e5ff676e3c2e7492658f72', 1, 1381238586),
(7, '/Uploads/Picture/2013-10-09/5254bf35cfd39.jpg', '', '2f3af32fd89c9681dec027e6b85f86bb', '7cfb3d4afec1128d115073b07044a82f0b0d061e', 1, 1381285685),
(8, '/Uploads/Picture/2013-10-10/52568eb6f053b.JPG', '', 'a9642dcb335a4ae03d5013d9e7b2d2f0', 'b4ecf290f4a2ce41715b2ecfd7dbe0c9731a519f', 1, 1381404342),
(9, '/Uploads/Picture/2013-10-13/525a6baf54eb0.jpg', '', 'eabe0216351ebbcd7227cf5d08e95a96', '4b00fafe31fe8c252336fd105b18be9b314b1c72', 1, 1381657519),
(10, '/Uploads/Picture/2015-05-18/5559a5666aafe.png', '', '9b7bc72f4a6b845e62f03cf1f225c73a', '1f6d61e6a5d600f505304ed1ef5600445f39a5a5', 1, 1431938406),
(11, '/Uploads/Picture/2015-05-18/5559a57a7793f.jpg', '', '9bbed3e4287f8d549027778973c39dc2', '0108f705bd0d7930731aff15b3e5f56fb10591aa', 1, 1431938426);

-- --------------------------------------------------------

--
-- 表的结构 `shop_ucenter_admin`
--

CREATE TABLE IF NOT EXISTS `shop_ucenter_admin` (
  `id` int(10) unsigned NOT NULL COMMENT '管理员ID',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '管理员状态'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='UCENTER 管理员表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_ucenter_app`
--

CREATE TABLE IF NOT EXISTS `shop_ucenter_app` (
  `id` int(10) unsigned NOT NULL COMMENT '应用ID',
  `title` varchar(30) NOT NULL COMMENT '应用名称',
  `url` varchar(100) NOT NULL COMMENT '应用URL',
  `ip` char(15) NOT NULL COMMENT '应用IP',
  `auth_key` varchar(100) NOT NULL COMMENT '加密KEY',
  `sys_login` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '同步登陆',
  `allow_ip` varchar(255) NOT NULL COMMENT '允许访问的IP',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '应用状态'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='UCENTER 应用表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_ucenter_member`
--

CREATE TABLE IF NOT EXISTS `shop_ucenter_member` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `username` char(16) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `sid` int(3) NOT NULL COMMENT '学校id',
  `qq` varchar(20) NOT NULL,
  `email` char(32) NOT NULL COMMENT '用户邮箱',
  `reg_phone` varchar(20) NOT NULL,
  `mobile` char(15) NOT NULL COMMENT '用户手机',
  `realname` char(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '用户状态'
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='UCENTER 用户表';

--
-- 转存表中的数据 `shop_ucenter_member`
--

INSERT INTO `shop_ucenter_member` (`uid`, `username`, `password`, `sid`, `qq`, `email`, `reg_phone`, `mobile`, `realname`, `address`, `reg_time`, `reg_ip`, `last_login_time`, `last_login_ip`, `update_time`, `status`) VALUES
(1, 'Administrator', '0534dd1c0b6323cdc8b97327abc3fba0', 1, '', 'yekz@qq.com', '', '', '', '', 1381216195, 2130706433, 1433915447, 2130706433, 1381216195, 1),
(17, 'admin', '13cf0c57e8cb604f596be51d99f89e8c', 1, '', 'yekz1@qq.com', '', '15609008651', '各走各路', '四川理工学院汇北校区4-xxx', 1431921053, 2130706433, 1380613573, 2130706433, 1431921053, 1),
(18, 'admin11', '76c772ecb9844d21f7088546e3393387', 1, '', 'yekz111@qq.com', '', '1111111111', '', '', 1381216195, 2130706433, 0, 0, 1381216195, 1),
(19, 'admin1111', '76c772ecb9844d21f7088546e3393387', 1, '', 'y@qq.com', '', '182 2775 5221', 'kezhong ye', '', 1381216195, 2130706433, 0, 0, 1381216195, 1),
(20, 'admin1', '76c772ecb9844d21f7088546e3393387', 1, '', 'y1@qq.com', '', '15008348002', 'kezhong ye', '', 1381216195, 2130706433, 1380510127, 0, 1381216195, 1),
(21, 'admin22', '76c772ecb9844d21f7088546e3393387', 1, '', 'yekz1111@qq.com', '', '182 2775 522111', 'kezhong ye', 'deyangshisonglingzhengdongguangcun18zhu', 1381216195, 2130706433, 0, 0, 1381216195, 1),
(22, 'helloworld', '76c772ecb9844d21f7088546e3393387', 1, '', 'yaeaf@qq.com', '', '155712544414', 'asdf', 'sdf', 1381216195, 2130706433, 1381136429, 2130706433, 1381216195, 1),
(23, 'helloworld1', '76c772ecb9844d21f7088546e3393387', 1, '', 'yeasdf@qq.com', '', '15008452319', '叶科忠', '汇北4-116', 1381230755, 2130706433, 1381136463, 2130706433, 1381230755, 1),
(24, 'hehe', '546d2ab22d1a31a9b1c7207558e7de79', 1, '', 'yasdf@qq.com', '', '15008349002', '用筷子', '四川理工学院汇北校区4-xxx', 1381562727, 2130706433, 1381667338, 2130706433, 1381562727, 1),
(25, '<!--呵呵<script>哈哈', '546d2ab22d1a31a9b1c7207558e7de79', 1, '', 'YEK@QQ.COM', '', '11111111111', '', '四川省', 1381547686, 2130706433, 0, 0, 1381547686, 1),
(26, '', '0b4dc1a204deb2912c068eaa903045cf', 1, '', 'yekz@qq.co', '', '18542444444', 'kezhong ye', 'deyangshisonglingzhengdongguangcun18zhu', 1381548145, 2130706433, 0, 0, 1381548145, 1),
(27, 'asdfasfasdf', '0b4dc1a204deb2912c068eaa903045cf', 1, '', 'ye@qq.com', '', '11111111111', 'kezhong ye', 'deyangshisonglingzhengdongguangcun18zhu', 1381549478, 2130706433, 0, 0, 1381549478, 1),
(28, 'asdfasfasdf1', '0b4dc1a204deb2912c068eaa903045cf', 1, '7676', 'ye1@qq.com', '', '11111111112', 'kezhong ye', 'deyangshisonglingzhengdongguangcun18zhu', 1381549750, 2130706433, 0, 0, 1381549750, 1),
(29, 'aEDASDASF', '0b4dc1a204deb2912c068eaa903045cf', 1, '11111111', 'jhas@qq.com', '', '15444444444', 'asdf', '四川省', 1381550124, 2130706433, 0, 0, 1381550124, 1),
(30, 'aEDASDASF1', '0b4dc1a204deb2912c068eaa903045cf', 1, '11111111', 'jhaa@qq.com', '', '15444444444', 'asdf', '四川省', 1381550157, 2130706433, 0, 0, 1381550157, 1),
(31, 'test222211', '0534dd1c0b6323cdc8b97327abc3fba0', 1, '767053703999', 'yekz11111@qq.com', '18227755233', '18227755233', '尼玛逼', 'deyangshisonglingzhengdongguangcun18zhu', 1431312110, 2130706433, 0, 0, 1431312110, 1),
(32, 'test123456', '0534dd1c0b6323cdc8b97327abc3fba0', 1, '58475585', 'yeaaaa@qq.comm', '15894586511', '15894586511', '测试', 'deyangshisonglingzhengdongguangcun18zhu', 1431937557, 2130706433, 1431938845, 2130706433, 1431937557, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop_ucenter_setting`
--

CREATE TABLE IF NOT EXISTS `shop_ucenter_setting` (
  `id` int(10) unsigned NOT NULL COMMENT '设置ID',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型（1-用户配置）',
  `value` text NOT NULL COMMENT '配置数据'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='UCENTER 设置表';

-- --------------------------------------------------------

--
-- 表的结构 `shop_url`
--

CREATE TABLE IF NOT EXISTS `shop_url` (
  `id` int(11) unsigned NOT NULL COMMENT '链接唯一标识',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `short` char(100) NOT NULL DEFAULT '' COMMENT '短网址',
  `status` tinyint(2) NOT NULL COMMENT '状态（-1：删除，0：禁用，1：正常，2：未审核）',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='链接表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_action`
--
ALTER TABLE `shop_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_action_log`
--
ALTER TABLE `shop_action_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id_ix` (`action_id`) USING BTREE,
  ADD KEY `user_id_ix` (`user_id`) USING BTREE,
  ADD KEY `action_ip_ix` (`action_ip`) USING BTREE;

--
-- Indexes for table `shop_addons`
--
ALTER TABLE `shop_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_attachment`
--
ALTER TABLE `shop_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_status` (`record_id`,`status`) USING BTREE;

--
-- Indexes for table `shop_auth_category_access`
--
ALTER TABLE `shop_auth_category_access`
  ADD UNIQUE KEY `uid_group_id` (`group_id`,`category_id`),
  ADD KEY `uid` (`group_id`),
  ADD KEY `group_id` (`category_id`);

--
-- Indexes for table `shop_auth_group`
--
ALTER TABLE `shop_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_auth_group_access`
--
ALTER TABLE `shop_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `shop_auth_rule`
--
ALTER TABLE `shop_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`module`,`name`,`type`) USING BTREE;

--
-- Indexes for table `shop_cart`
--
ALTER TABLE `shop_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_name` (`name`) USING BTREE;

--
-- Indexes for table `shop_channel`
--
ALTER TABLE `shop_channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_config`
--
ALTER TABLE `shop_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_name` (`name`) USING BTREE;

--
-- Indexes for table `shop_document`
--
ALTER TABLE `shop_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`) USING BTREE,
  ADD KEY `idx_category_status` (`category_id`,`status`) USING BTREE,
  ADD KEY `idx_status_type_pid` (`status`,`type`,`pid`) USING BTREE;

--
-- Indexes for table `shop_document_model`
--
ALTER TABLE `shop_document_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_document_model_article`
--
ALTER TABLE `shop_document_model_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_document_model_download`
--
ALTER TABLE `shop_document_model_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_file`
--
ALTER TABLE `shop_file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_md5` (`md5`) USING BTREE;

--
-- Indexes for table `shop_hooks`
--
ALTER TABLE `shop_hooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `搜索索引` (`name`);

--
-- Indexes for table `shop_member`
--
ALTER TABLE `shop_member`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `shop_orderform`
--
ALTER TABLE `shop_orderform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_picture`
--
ALTER TABLE `shop_picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_ucenter_admin`
--
ALTER TABLE `shop_ucenter_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_ucenter_app`
--
ALTER TABLE `shop_ucenter_app`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `shop_ucenter_member`
--
ALTER TABLE `shop_ucenter_member`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE;

--
-- Indexes for table `shop_ucenter_setting`
--
ALTER TABLE `shop_ucenter_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_url`
--
ALTER TABLE `shop_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_url` (`url`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_action`
--
ALTER TABLE `shop_action`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shop_action_log`
--
ALTER TABLE `shop_action_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `shop_addons`
--
ALTER TABLE `shop_addons`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_attachment`
--
ALTER TABLE `shop_attachment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_auth_group`
--
ALTER TABLE `shop_auth_group`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shop_auth_rule`
--
ALTER TABLE `shop_auth_rule`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `shop_cart`
--
ALTER TABLE `shop_cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `shop_channel`
--
ALTER TABLE `shop_channel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '频道ID',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shop_config`
--
ALTER TABLE `shop_config`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `shop_document`
--
ALTER TABLE `shop_document`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `shop_document_model`
--
ALTER TABLE `shop_document_model`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_file`
--
ALTER TABLE `shop_file`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文件ID';
--
-- AUTO_INCREMENT for table `shop_hooks`
--
ALTER TABLE `shop_hooks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `shop_orderform`
--
ALTER TABLE `shop_orderform`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `shop_picture`
--
ALTER TABLE `shop_picture`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id自增',AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `shop_ucenter_admin`
--
ALTER TABLE `shop_ucenter_admin`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shop_ucenter_app`
--
ALTER TABLE `shop_ucenter_app`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '应用ID',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_ucenter_member`
--
ALTER TABLE `shop_ucenter_member`
  MODIFY `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `shop_ucenter_setting`
--
ALTER TABLE `shop_ucenter_setting`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '设置ID';
--
-- AUTO_INCREMENT for table `shop_url`
--
ALTER TABLE `shop_url`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接唯一标识';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
