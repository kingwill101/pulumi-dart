/// Specifies the total network bandwidth tier for the NodePool.
enum NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1 {
  tierUnspecified("TIER_UNSPECIFIED"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTierContainerV1 value: $value');
  }
}
