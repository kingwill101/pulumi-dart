/// Specifies the total network bandwidth tier for NodePools in the cluster.
enum ClusterNetworkPerformanceConfigTotalEgressBandwidthTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const ClusterNetworkPerformanceConfigTotalEgressBandwidthTier(this.value);
  final String value;

  static ClusterNetworkPerformanceConfigTotalEgressBandwidthTier fromValue(
    String value,
  ) {
    for (final item
        in ClusterNetworkPerformanceConfigTotalEgressBandwidthTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClusterNetworkPerformanceConfigTotalEgressBandwidthTier value: $value',
    );
  }
}
