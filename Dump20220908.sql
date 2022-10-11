-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: human_resources
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absent`
--

DROP TABLE IF EXISTS `absent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absent` (
  `absentId` int NOT NULL AUTO_INCREMENT,
  `absentOff` date DEFAULT NULL,
  `absentOn` date DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `numberAbsent` int NOT NULL,
  `absentTypeId` int DEFAULT NULL,
  `employeeId` int DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`absentId`),
  KEY `FKg2o9ihijuy700poyrj2cfffmc` (`employeeId`),
  KEY `FK9aix2krho8ipevpgnmxhe0es9` (`absentTypeId`),
  CONSTRAINT `FK9aix2krho8ipevpgnmxhe0es9` FOREIGN KEY (`absentTypeId`) REFERENCES `absenttype` (`absentTypeId`),
  CONSTRAINT `FKbsrxijjon4ifd5up1iog4fjci` FOREIGN KEY (`absentTypeId`) REFERENCES `absenttype` (`absentTypeId`),
  CONSTRAINT `FKg2o9ihijuy700poyrj2cfffmc` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absent`
--
-- ORDER BY:  `absentId`

LOCK TABLES `absent` WRITE;
/*!40000 ALTER TABLE `absent` DISABLE KEYS */;
INSERT INTO `absent` VALUES (1,'2022-02-02','2022-03-25','adsf',12,1,1,0),(5,'2022-09-08','2022-09-01','1111',12,1,6,0);
/*!40000 ALTER TABLE `absent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `absenttype`
--

DROP TABLE IF EXISTS `absenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absenttype` (
  `absentTypeId` int NOT NULL AUTO_INCREMENT,
  `nameAbsentType` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `absentType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`absentTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absenttype`
--
-- ORDER BY:  `absentTypeId`

LOCK TABLES `absenttype` WRITE;
/*!40000 ALTER TABLE `absenttype` DISABLE KEYS */;
INSERT INTO `absenttype` VALUES (1,'Nghi thuong','abc',1,'Nghi co luong'),(3,'nghi nam','123',1,'Nghi khong luong'),(4,'Nghi viec','abc',1,'Nghi khong luong');
/*!40000 ALTER TABLE `absenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `calendarId` int NOT NULL AUTO_INCREMENT,
  `applicableDate` datetime DEFAULT NULL,
  `workingDate` varchar(255) DEFAULT NULL,
  `noteCalendar` varchar(255) DEFAULT NULL,
  `employeeId` int DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  KEY `FKowac7wvp5w44laipemdv50nyg` (`employeeId`),
  CONSTRAINT `FKowac7wvp5w44laipemdv50nyg` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--
-- ORDER BY:  `calendarId`

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (23,'2022-09-01 00:00:00','ca 1','adc',15),(24,'2022-09-14 00:00:00','ca 1','adc',1);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `contracId` int NOT NULL AUTO_INCREMENT,
  `contractName` varchar(255) NOT NULL,
  `contractPeriod` int NOT NULL,
  `dayContract` datetime NOT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `interviewDay` datetime NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `typeOfCOntract` varchar(255) DEFAULT NULL,
  `workingDay` datetime NOT NULL,
  `employeeId` int DEFAULT NULL,
  PRIMARY KEY (`contracId`),
  KEY `FKthixo4sywalb3x0thfu9i4j52` (`employeeId`),
  CONSTRAINT `FKthixo4sywalb3x0thfu9i4j52` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--
-- ORDER BY:  `contracId`

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'Lao dong',52,'2000-09-02 00:00:00','dai hoc','2022-09-05 00:00:00','codeer','1','123',66666,'Vo thoi han','2021-01-06 00:00:00',1),(3,'Lao dong',7,'2000-09-02 00:00:00','dai hoc','2022-09-05 00:00:00','codeer','1','123',1,'Chinh thuc','2021-01-06 00:00:00',1),(4,'Lao dong',7,'2000-09-02 00:00:00','dai hoc','2022-09-05 00:00:00','codeer','1','123',1,'Thu viec','2021-01-06 00:00:00',1),(5,'Lao dong',5,'2000-09-02 00:00:00','dai hoc','2022-09-05 00:00:00','codeer','12','123',5555,'Chinh thuc','2021-01-06 00:00:00',1),(6,'Lao dong',5,'2000-09-02 00:00:00','dai hoc','2022-09-05 00:00:00','codeer','12','123',444,'Thu viec','2021-01-06 00:00:00',1),(7,'Lao dong',123,'2000-08-20 00:00:00','trung cap','2000-08-20 00:00:00','coder','bang dai hoc','',5550,'Thu viec','2021-01-06 00:00:00',1),(15,'Lao dong',1,'2000-08-20 00:00:00','trung cap','2000-08-20 00:00:00','coder','bang dai hoc','444',21,'Thu viec','2021-01-06 00:00:00',1),(20,'Lao dong',-10,'2000-08-20 00:00:00','trung cap','2000-08-20 00:00:00','coder','bang dai hoc','444',5555,'Thu viec','2000-08-20 00:00:00',6),(26,'Lao dong',55,'2022-09-25 00:00:00','trung cap','2022-09-10 00:00:00','coder','bang dai hoc','7777',1111,'Chinh thuc','2022-09-18 00:00:00',6),(27,'Lao dong',12,'2022-09-30 00:00:00','trung cap','2022-09-18 00:00:00','coder','bang dai hoc','7777',333,'Chinh thuc','2022-09-10 00:00:00',5),(28,'Lao dong',4444,'2022-09-04 00:00:00','trung cap','2022-09-02 00:00:00','coder','bang dai hoc','123',4444,'Chinh thuc','2022-09-03 00:00:00',13),(29,'Lao dong',5,'2022-09-03 00:00:00','trung cap','2022-09-01 00:00:00','coder','bang dai hoc','123',555,'Vo thoi han','2022-09-01 00:00:00',1),(30,'Lao dong',55,'2022-09-02 00:00:00','trung cap','2022-09-08 00:00:00','coder','bang dai hoc','7777',555,'Chinh thuc','2022-09-02 00:00:00',14);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentId` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `startDay` datetime DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--
-- ORDER BY:  `departmentId`

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,41,'quan ly nhan su','2000-05-20 00:00:00',1),(5,123,'ly','2022-08-17 00:00:00',0),(9,123,'tuan anh','2022-08-18 00:00:00',1),(14,22,'giao hang','2022-09-08 00:00:00',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `PlaceOfBirth` varchar(255) DEFAULT NULL,
  `citizenIdentification` varchar(255) NOT NULL,
  `dateOfBirth` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `permanentreSidence` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sex` int NOT NULL,
  `status` int NOT NULL,
  `departmentId` int DEFAULT NULL,
  `timekeepingId` int DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `FKrnk2b1g5pm5u3ia051j8vlshi` (`departmentId`),
  KEY `FKdvobj4crqul2p45qixqcs54ml` (`timekeepingId`),
  CONSTRAINT `FKdvobj4crqul2p45qixqcs54ml` FOREIGN KEY (`timekeepingId`) REFERENCES `timekeeping` (`timekeeingId`),
  CONSTRAINT `FKrnk2b1g5pm5u3ia051j8vlshi` FOREIGN KEY (`departmentId`) REFERENCES `department` (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--
-- ORDER BY:  `employeeId`

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'congly1','352606297','2022-02-03 00:00:00','congly@gmail.com','congly','nguyen huynh cong ly','372440346','inter',1,0,1,NULL),(5,'an giang','35566','2000-09-17 00:00:00','congly123@gmail.com','Tai','15 hanh thog','0900000000','Nhan vien',1,1,1,NULL),(6,'congly1','124555555','2000-09-17 00:00:00','ngu@gmail.com','tranh thanh','15 hanh thog','0300000000','Nhan vien',0,0,1,NULL),(12,'An Giang','245657699','2022-08-27 00:00:00','congly123@gmail.com','tai tai','15 hanh thog','0303030303','Nhan vien',0,1,1,NULL),(13,'An Giang','352606297','2022-02-03 00:00:00','congly@gmail.com','cong ly','nguyen huynh cong ly','0372440346','inter',0,1,14,NULL),(14,'An Giang','245657689','2022-09-09 00:00:00','congly@gmail.com','tam van','15 hanh thong go vap TPHCM','0303030303','Nhan vien',0,0,1,NULL),(15,'An Giang','124444444','2000-09-17 00:00:00','nguyen@gmail.com','thanh nho','15 hanh thog','0300000000','Nhan vien',0,0,14,NULL),(17,'An Giang','245657687','2022-09-18 00:00:00','7092000@gmail.com','tuan tuan','15 hanh thong go vap TPHCM','0303030303','Nhan vien',1,1,1,NULL),(18,'BÃ¬nh PhÆ°á»c','245657687','2022-09-23 00:00:00','congly@gmail.com','tuan tran','15 hanh thong go vap TPHCM','0303030303','Nhan vien',1,1,9,NULL),(19,'An Giang','352606297','2022-02-03 00:00:00','congly@gmail.com','cong ly','nguyen huynh cong ly','0372440346','inter',1,0,14,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `insuranceId` int NOT NULL AUTO_INCREMENT,
  `dateRange` datetime NOT NULL,
  `insuranceMoney` double NOT NULL,
  `insuranceName` varchar(255) DEFAULT NULL,
  `payMent` double NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `socailLnuranceNumber` varchar(255) NOT NULL,
  `employeeId` int DEFAULT NULL,
  PRIMARY KEY (`insuranceId`),
  KEY `FKbyw20e5l514al6tonti8rgkow` (`employeeId`),
  CONSTRAINT `FKbyw20e5l514al6tonti8rgkow` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--
-- ORDER BY:  `insuranceId`

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'2000-02-26 00:00:00',50000,'bao hiem tai nan',50000,'can tho','5320',6),(3,'2020-02-02 00:00:00',12,'y te',1234,'TPHCM','5320',5),(7,'2022-09-25 00:00:00',555,'nhan tho',555,'an giang','9999999999',5),(8,'2022-09-01 00:00:00',555,'bao hiem y te',555,'Can Tho','9999999999',1);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaryadvance`
--

DROP TABLE IF EXISTS `salaryadvance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaryadvance` (
  `salaryAdvenceId` int NOT NULL AUTO_INCREMENT,
  `dateSalaryAdvence` datetime DEFAULT NULL,
  `money` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `employeeId` int DEFAULT NULL,
  PRIMARY KEY (`salaryAdvenceId`),
  KEY `FK60c9pdp92mll77hyrqa3q0fbt` (`employeeId`),
  CONSTRAINT `FK60c9pdp92mll77hyrqa3q0fbt` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaryadvance`
--
-- ORDER BY:  `salaryAdvenceId`

LOCK TABLES `salaryadvance` WRITE;
/*!40000 ALTER TABLE `salaryadvance` DISABLE KEYS */;
INSERT INTO `salaryadvance` VALUES (1,'2022-02-08 00:00:00',2224,'123r',5),(5,'2022-09-04 00:00:00',5554,'7777',1),(6,'2022-09-15 00:00:00',5555,'7777',6);
/*!40000 ALTER TABLE `salaryadvance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarylist`
--

DROP TABLE IF EXISTS `salarylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarylist` (
  `salaryId` int NOT NULL AUTO_INCREMENT,
  `money` double NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salaryName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`salaryId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarylist`
--
-- ORDER BY:  `salaryId`

LOCK TABLES `salarylist` WRITE;
/*!40000 ALTER TABLE `salarylist` DISABLE KEYS */;
INSERT INTO `salarylist` VALUES (1,2000,'acb','Luong co ban','0',0),(6,555,'7777','Tien xang','1',1);
/*!40000 ALTER TABLE `salarylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salarylist_employee`
--

DROP TABLE IF EXISTS `salarylist_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarylist_employee` (
  `salaryId` int NOT NULL,
  `employeeId` int NOT NULL,
  PRIMARY KEY (`employeeId`,`salaryId`),
  KEY `FK4q6bgu35n55n2jfqw21ym6q6d` (`salaryId`),
  CONSTRAINT `FK4q6bgu35n55n2jfqw21ym6q6d` FOREIGN KEY (`salaryId`) REFERENCES `salarylist` (`salaryId`),
  CONSTRAINT `FKd92k002gyld4qrfiuq771fpp5` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarylist_employee`
--
-- ORDER BY:  `employeeId`,`salaryId`

LOCK TABLES `salarylist_employee` WRITE;
/*!40000 ALTER TABLE `salarylist_employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `salarylist_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timekeeping`
--

DROP TABLE IF EXISTS `timekeeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timekeeping` (
  `timekeeingId` int NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`timekeeingId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timekeeping`
--
-- ORDER BY:  `timekeeingId`

LOCK TABLES `timekeeping` WRITE;
/*!40000 ALTER TABLE `timekeeping` DISABLE KEYS */;
INSERT INTO `timekeeping` VALUES (1,'123',1),(2,'456 nhana vine',2);
/*!40000 ALTER TABLE `timekeeping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-08 11:52:34
