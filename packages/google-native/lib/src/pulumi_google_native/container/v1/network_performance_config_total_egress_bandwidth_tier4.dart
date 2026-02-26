/// Specifies the total network bandwidth tier for the NodePool.
enum NetworkPerformanceConfigTotalEgressBandwidthTier4 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier4(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTier4 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTier4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTier4 value: $value');
  }
}
