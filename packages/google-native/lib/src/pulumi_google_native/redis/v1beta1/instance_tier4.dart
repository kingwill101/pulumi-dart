/// Required. The service tier of the instance.
enum InstanceTier4 {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

  const InstanceTier4(this.value);
  final String value;

  static InstanceTier4 fromValue(String value) {
    for (final item in InstanceTier4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTier4 value: $value');
  }
}
