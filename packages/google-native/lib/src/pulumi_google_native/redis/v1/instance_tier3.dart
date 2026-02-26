/// Required. The service tier of the instance.
enum InstanceTier3 {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

  const InstanceTier3(this.value);
  final String value;

  static InstanceTier3 fromValue(String value) {
    for (final item in InstanceTier3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTier3 value: $value');
  }
}
