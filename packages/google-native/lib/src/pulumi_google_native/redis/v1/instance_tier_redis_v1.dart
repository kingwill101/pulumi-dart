/// Required. The service tier of the instance.
enum InstanceTierRedisV1 {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

  const InstanceTierRedisV1(this.value);
  final String value;

  static InstanceTierRedisV1 fromValue(String value) {
    for (final item in InstanceTierRedisV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTierRedisV1 value: $value');
  }
}
