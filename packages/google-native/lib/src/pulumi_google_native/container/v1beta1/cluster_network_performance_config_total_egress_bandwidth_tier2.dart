/// Specifies the total network bandwidth tier for the NodePool.
enum ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2(this.value);
  final String value;

  static ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2 fromValue(
      String value) {
    for (final item
        in ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ClusterNetworkPerformanceConfigTotalEgressBandwidthTier2 value: $value');
  }
}
