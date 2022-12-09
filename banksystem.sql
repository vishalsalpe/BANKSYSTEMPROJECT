-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2022 at 10:05 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Acc_id` varchar(255) NOT NULL,
  `Cust_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Acc_type` varchar(255) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Id`, `Acc_id`, `Cust_id`, `Fname`, `Lname`, `Phone`, `Email`, `Acc_type`, `Balance`) VALUES
(1, 'AC001', 'CS001', 'Tarun', 'Mishra', 896523015, 'tarun@gmail.com', 'Current Acccount', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `createaccount`
--

CREATE TABLE IF NOT EXISTS `createaccount` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Cpassword` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `createaccount`
--

INSERT INTO `createaccount` (`Id`, `FirstName`, `LastName`, `Email`, `Username`, `Password`, `Cpassword`) VALUES
(1, 'Tarun', 'Mishra', 'tarun@gmail.com', 'tarun', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Cust_id` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Phone` int(13) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Photo_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Cust_id`, `FirstName`, `LastName`, `Phone`, `Email`, `Gender`, `DOB`, `City`, `State`, `Address`, `Photo_ID`) VALUES
(1, 'CS001', 'Tarun', 'Mishra', 896523015, 'tarun@gmail.com', 'Male', '2022-05-17', 'pune', 'Maharashtra', 'vgg', 'C:\\Users\\abhishek\\PycharmProjects\\Pictures\\s.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE IF NOT EXISTS `deposit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Acc_id` varchar(255) NOT NULL,
  `Cust_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Balance` int(11) NOT NULL,
  `Deposit` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`Id`, `Acc_id`, `Cust_id`, `Fname`, `Lname`, `Date`, `Balance`, `Deposit`) VALUES
(1, 'AC001', 'CS001', 'Tarun', 'Mishra', '2022/05/10', 5000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `openaccount`
--

CREATE TABLE IF NOT EXISTS `openaccount` (
  `Ano` int(50) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `DDate` date NOT NULL,
  `Amount` int(50) NOT NULL,
  PRIMARY KEY (`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `openaccount`
--

INSERT INTO `openaccount` (`Ano`, `Cname`, `DDate`, `Amount`) VALUES
(8, 'fdfd', '2022-02-02', 5565);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `F_Account` varchar(255) NOT NULL,
  `Balance` int(11) NOT NULL,
  `To_Account` varchar(255) NOT NULL,
  `Transfer_Amount` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE IF NOT EXISTS `withdraw` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Acc_id` varchar(255) NOT NULL,
  `Cust_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Balance` int(11) NOT NULL,
  `Withdraw` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
