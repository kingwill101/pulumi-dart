/// Supported type this scheduled task represents.
enum ScheduledType {
  valueStopDevBox("StopDevBox");

  const ScheduledType(this.wireValue);
  final String wireValue;

  static ScheduledType fromValue(String value) {
    for (final item in ScheduledType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledType value: $value');
  }
}
