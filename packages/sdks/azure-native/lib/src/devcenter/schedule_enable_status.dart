/// Indicates whether or not this scheduled task is enabled.
enum ScheduleEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScheduleEnableStatus(this.wireValue);
  final String wireValue;

  static ScheduleEnableStatus fromValue(String value) {
    for (final item in ScheduleEnableStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleEnableStatus value: $value');
  }
}

