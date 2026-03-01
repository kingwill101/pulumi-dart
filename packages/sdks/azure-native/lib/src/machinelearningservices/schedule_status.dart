/// Is the schedule enabled or disabled?
enum ScheduleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScheduleStatus(this.value);
  final String value;

  static ScheduleStatus fromValue(String value) {
    for (final item in ScheduleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleStatus value: $value');
  }
}

