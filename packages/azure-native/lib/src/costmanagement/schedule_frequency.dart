/// Frequency of the schedule.
enum ScheduleFrequency {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

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

