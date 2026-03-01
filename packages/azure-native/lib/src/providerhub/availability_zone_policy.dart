enum AvailabilityZonePolicy {
  notSpecified("NotSpecified"),
  singleZoned("SingleZoned"),
  multiZoned("MultiZoned");

  const AvailabilityZonePolicy(this.value);
  final String value;

  static AvailabilityZonePolicy fromValue(String value) {
    for (final item in AvailabilityZonePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityZonePolicy value: $value');
  }
}

