/// Frequency of the schedule.
enum ScheduleFrequency {
  daily("Daily"),
  weekly("Weekly"),
  monthly("Monthly");

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
