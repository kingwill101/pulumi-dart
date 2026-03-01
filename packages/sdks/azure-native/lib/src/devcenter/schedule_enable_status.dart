/// Indicates whether or not this scheduled task is enabled.
enum ScheduleEnableStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ScheduleEnableStatus(this.value);
  final String value;

  static ScheduleEnableStatus fromValue(String value) {
    for (final item in ScheduleEnableStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleEnableStatus value: $value');
  }
}

