/// Supported type this scheduled task represents.
enum ScheduledType {
  valueStopDevBox("StopDevBox");

  const ScheduledType(this.value);
  final String value;

  static ScheduledType fromValue(String value) {
    for (final item in ScheduledType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledType value: $value');
  }
}

