/// Gets or sets the target availability zone.
enum TargetAvailabilityZone {
  value1("1"),
  value2("2"),
  value3("3"),
  valueNA("NA");

  const TargetAvailabilityZone(this.wireValue);
  final String wireValue;

  static TargetAvailabilityZone fromValue(String value) {
    for (final item in TargetAvailabilityZone.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAvailabilityZone value: $value');
  }
}
