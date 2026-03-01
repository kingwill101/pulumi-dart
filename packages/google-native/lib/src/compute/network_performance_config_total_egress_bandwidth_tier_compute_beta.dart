enum NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkPerformanceConfigTotalEgressBandwidthTierComputeBeta value: $value',
    );
  }
}
