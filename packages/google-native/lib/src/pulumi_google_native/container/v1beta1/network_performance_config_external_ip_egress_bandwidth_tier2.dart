/// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
enum NetworkPerformanceConfigExternalIpEgressBandwidthTier2 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTier2(this.value);
  final String value;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTier2 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigExternalIpEgressBandwidthTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTier2 value: $value');
  }
}
