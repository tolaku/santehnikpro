-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 12 2017 г., 18:00
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `santehnikpro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `constants`
--

CREATE TABLE IF NOT EXISTS `constants` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `constants`
--

INSERT INTO `constants` (`id`, `title`, `name`, `text`) VALUES
(1, 'В шапке телефон и email', 'heder_telefon', '<li><a href="tel:+375444540444" class="hvr-bounce-to-bottom"><i class="fa fa-phone"></i> (44) 454-04-44 </a></li>\n						<li><a href="mailto:santehkostya@mail.ru" class="hvr-bounce-to-bottom"><i class="fa fa-envelope-o"></i> santehkostya@mail.ru</a></li>');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url_page` varchar(255) NOT NULL,
  `position` int(3) NOT NULL,
  `parent_id` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `url_page`, `position`, `parent_id`) VALUES
(1, 'Главная', 'home', 1, 0),
(2, 'О нас', 'about', 2, 0),
(3, 'Услуги', 'project', 3, 0),
(4, 'Контакты', 'contact', 4, 0),
(5, 'Отопление', 'uslugi', 5, 1),
(6, 'Водоснабжение', 'uslugi', 6, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;