# Create variables
years <- c(2010:2012, "2012-mid", 2013:2023)  # Years from 2010 to 2023, with 2012 and 2012-mid

# Total number of participants for each year (15 values)
total_participants <- c(6518, 4441, 6884, 4514, 12179, 18261, 15820, 13942, 21936, 17072, 47948, 42681, 38550, 34131, 33722)

# Number of participants identifying with a religious faith for each year (15 values)
religious_faith <- c(2826, 1965, 2727, 1695, 5036, 7107, 6277, 5879, 8332, 6142, 17141, 14375, 12766, 10948, 10923)

# Combine the data into a data frame, converting 'years' to a factor for proper ordering in the plot
data <- data.frame(years = factor(years, levels = c(2010:2012, "2012-mid", 2013:2023)), 
                   total_participants, religious_faith)

# Load ggplot2 package
library(ggplot2)

# Plot the data
ggplot(data, aes(x = years)) + 
  geom_line(aes(y = total_participants, color = "Total Participants"), size = 1, group = 1) + 
  geom_line(aes(y = religious_faith, color = "Identifying with a Religion"), size = 1, group = 1) +
  labs(title = "NZAVS Total Sample vs. Those with a Religion",
       x = "Years",
       y = "Number of Participants") +
  scale_color_manual(values = c("Total Participants" = "blue", "Identifying with a Religion" = "red")) +
  theme_minimal() +
  theme(legend.title = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1),
        panel.grid = element_blank())  # Remove grid lines



