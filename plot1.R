library(sqldf)
dat <- read.csv.sql("household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", sep = ";")
png(file = "plot1.png")
hist(dat$Global_active_power, col = "red", xlab = "Global Active Power (killowatts)", main = "Global Active Power" )
dev.off()
