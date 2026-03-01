/// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
enum NetworkPerformanceConfigExternalIpEgressBandwidthTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTier(this.value);
  final String value;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTier fromValue(
    String value,
  ) {
    for (final item
        in NetworkPerformanceConfigExternalIpEgressBandwidthTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTier value: $value',
    );
  }
}
