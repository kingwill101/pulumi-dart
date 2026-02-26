enum NetworkPerformanceConfigTotalEgressBandwidthTier2 {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier2(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTier2 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTier2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTier2 value: $value');
  }
}
