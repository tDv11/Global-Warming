library(weatherData)
library(ggplot2)
library(scales)
library(plyr)


w2015 <- getWeatherForYear("tlv",2015)
w2012 <- getWeatherForYear("tlv",2012)
w2009 <- getWeatherForYear("tlv",2009)
w2006 <- getWeatherForYear("tlv",2006)
w2004 <- getWeatherForYear("tlv",2004)
w2002 <- getWeatherForYear("tlv",2002)
w2000 <- getWeatherForYear("tlv",2000)





MaxTempGlobe<- matrix( ncol=1,nrow=7)


MaxTempGlobe[1,1]<-(max(w2015[,2], na.rm = TRUE))
MaxTempGlobe[2,1]<-(max(w2012[,2], na.rm = TRUE))
MaxTempGlobe[3,1]<-(max(w2009[,2], na.rm = TRUE))
MaxTempGlobe[4,1]<-(max(w2006[,2], na.rm = TRUE))
MaxTempGlobe[5,1]<-(max(w2004[,2], na.rm = TRUE))
MaxTempGlobe[6,1]<-(max(w2002[,2], na.rm = TRUE))
MaxTempGlobe[7,1]<-(max(w2000[,2], na.rm = TRUE))




plot(MaxTempGlobe, type="o", col="blue")


axis(1, 1:7, labels=c("2015","2012","2009","2006","2004","2002","2000"))


title(main="Highest Temperature of each year in Israel", col.main="red", font.main=4)


wUSA2015 <- getWeatherForYear("sfo",2015)
wUSA2012 <- getWeatherForYear("sfo",2012)
wUSA2009 <- getWeatherForYear("sfo",2009)
wUSA2006 <- getWeatherForYear("sfo",2006)
wUSA2004 <- getWeatherForYear("sfo",2004)
wUSA2002 <- getWeatherForYear("sfo",2002)
wUSA2000 <- getWeatherForYear("sfo",2000)

MaxTempGlobeUSA<- matrix( ncol=1,nrow=7)


MaxTempGlobeUSA[1,1]<-(max(wUSA2015[,3], na.rm = TRUE))
MaxTempGlobeUSA[2,1]<-(max(wUSA2012[,3], na.rm = TRUE))
MaxTempGlobeUSA[3,1]<-(max(wUSA2009[,3], na.rm = TRUE))
MaxTempGlobeUSA[4,1]<-(max(wUSA2006[,3], na.rm = TRUE))
MaxTempGlobeUSA[5,1]<-(max(wUSA2004[,3], na.rm = TRUE))
MaxTempGlobeUSA[6,1]<-(max(wUSA2002[,3], na.rm = TRUE))
MaxTempGlobeUSA[7,1]<-(max(wUSA2000[,3], na.rm = TRUE))




plot(MaxTempGlobeUSA, type="o", col="blue")


axis(1, 1:7, labels=c("2015","2012","2009","2006","2004","2002","2000"))


title(main="Global Warming In the US", col.main="red", font.main=4)



wKIN2015 <- getWeatherForYear("KIN",2015)
wKIN2012 <- getWeatherForYear("KIN",2012)
wKIN2009 <- getWeatherForYear("KIN",2009)
wKIN2006 <- getWeatherForYear("KIN",2006)
wKIN2004 <- getWeatherForYear("KIN",2004)
wKIN2002 <- getWeatherForYear("KIN",2002)
wKIN2000 <- getWeatherForYear("KIN",2000)

MaxTempGlobeKIN<- matrix( ncol=1,nrow=7)


MaxTempGlobeKIN[1,1]<-(max(wKIN2015[,3], na.rm = TRUE))
MaxTempGlobeKIN[2,1]<-(max(wKIN2012[,3], na.rm = TRUE))
MaxTempGlobeKIN[3,1]<-(max(wKIN2009[,3], na.rm = TRUE))
MaxTempGlobeKIN[4,1]<-(max(wKIN2006[,3], na.rm = TRUE))
MaxTempGlobeKIN[5,1]<-(max(wKIN2004[,3], na.rm = TRUE))
MaxTempGlobeKIN[6,1]<-(max(wKIN2002[,3], na.rm = TRUE))
MaxTempGlobeKIN[7,1]<-(max(wKIN2000[,3], na.rm = TRUE))




plot(MaxTempGlobeKIN, type="o", col="blue")


axis(1, 1:7, labels=c("2015","2012","2009","2006","2004","2002","2000"))


title(main="Global Warming In the Jamaica", col.main="red", font.main=4)


plot(w2015[,3], type="o", col="red")
title(main="Average Tempature of 2015, 1/1-31/12", col.main="blue", font.main=4)
