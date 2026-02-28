/// Specifies the total network bandwidth tier for the NodePool.
enum NetworkPerformanceConfigTotalEgressBandwidthTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTier fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTier value: $value');
  }
}
