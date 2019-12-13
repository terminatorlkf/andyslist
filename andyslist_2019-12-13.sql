# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 3.133.127.60 (MySQL 5.7.28-0ubuntu0.18.04.4)
# Database: andyslist
# Generation Time: 2019-12-13 17:11:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Addresses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Addresses`;

CREATE TABLE `Addresses` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `add_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `add_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Book
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Book`;

CREATE TABLE `Book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ISBN` int(50) NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cover` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `length` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Buyers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Buyers`;

CREATE TABLE `Buyers` (
  `buyer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_method` int(11) NOT NULL,
  PRIMARY KEY (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Cart`;

CREATE TABLE `Cart` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Furniture
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Furniture`;

CREATE TABLE `Furniture` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Order`;

CREATE TABLE `Order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seller_id` int(11) NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `buyer_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sold_at` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Product`;

CREATE TABLE `Product` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seller_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Sellers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Sellers`;

CREATE TABLE `Sellers` (
  `seller_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Shipping
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Shipping`;

CREATE TABLE `Shipping` (
  `shipping_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `charge` float DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



# Dump of table Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(225) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
