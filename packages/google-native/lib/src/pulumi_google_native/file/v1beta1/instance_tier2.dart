/// The service tier of the instance.
enum InstanceTier2 {
  tierUnspecified("TIER_UNSPECIFIED"),
  standard("STANDARD"),
  premium("PREMIUM"),
  basicHdd("BASIC_HDD"),
  basicSsd("BASIC_SSD"),
  highScaleSsd("HIGH_SCALE_SSD"),
  enterprise("ENTERPRISE"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const InstanceTier2(this.value);
  final String value;

  static InstanceTier2 fromValue(String value) {
    for (final item in InstanceTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTier2 value: $value');
  }
}
