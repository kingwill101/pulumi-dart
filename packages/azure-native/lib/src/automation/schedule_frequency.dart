/// Gets or sets the frequency of the schedule.
enum ScheduleFrequency {
  valueOneTime("OneTime"),
  valueDay("Day"),
  valueHour("Hour"),
  valueWeek("Week"),
  valueMonth("Month"),
  valueMinute("Minute");

  const ScheduleFrequency(this.value);
  final String value;

  static ScheduleFrequency fromValue(String value) {
    for (final item in ScheduleFrequency.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleFrequency value: $value');
  }
}

