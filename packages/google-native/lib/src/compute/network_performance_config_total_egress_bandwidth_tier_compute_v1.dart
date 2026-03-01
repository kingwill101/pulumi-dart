enum NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 fromValue(
    String value,
  ) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkPerformanceConfigTotalEgressBandwidthTierComputeV1 value: $value',
    );
  }
}
