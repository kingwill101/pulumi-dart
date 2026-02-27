/// Specifies the network bandwidth tier for the NodePool for traffic to external/public IP addresses.
enum NetworkPerformanceConfigExternalIpEgressBandwidthTierContainerV1beta1 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTierContainerV1beta1(
      this.value);
  final String value;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTierContainerV1beta1
      fromValue(String value) {
    for (final item
        in NetworkPerformanceConfigExternalIpEgressBandwidthTierContainerV1beta1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTierContainerV1beta1 value: $value');
  }
}
