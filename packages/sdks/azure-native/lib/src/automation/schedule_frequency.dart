/// Gets or sets the frequency of the schedule.
enum ScheduleFrequency {
  valueOneTime("OneTime"),
  valueDay("Day"),
  valueHour("Hour"),
  valueWeek("Week"),
  valueMonth("Month"),
  valueMinute("Minute");

  const ScheduleFrequency(this.wireValue);
  final String wireValue;

  static ScheduleFrequency fromValue(String value) {
    for (final item in ScheduleFrequency.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleFrequency value: $value');
  }
}

