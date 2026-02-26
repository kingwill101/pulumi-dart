/// Specifies the total network bandwidth tier for the NodePool.
enum NetworkPerformanceConfigTotalEgressBandwidthTier5 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier5(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTier5 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTier5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTier5 value: $value');
  }
}
