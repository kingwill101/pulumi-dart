/// Gets or sets the target availability zone.
enum TargetAvailabilityZone {
  value1("1"),
  value2("2"),
  value3("3"),
  valueNA("NA");

  const TargetAvailabilityZone(this.value);
  final String value;

  static TargetAvailabilityZone fromValue(String value) {
    for (final item in TargetAvailabilityZone.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetAvailabilityZone value: $value');
  }
}

