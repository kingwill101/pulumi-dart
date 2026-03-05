/// Is the schedule enabled or disabled?
enum ScheduleStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScheduleStatus(this.wireValue);
  final String wireValue;

  static ScheduleStatus fromValue(String value) {
    for (final item in ScheduleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleStatus value: $value');
  }
}

