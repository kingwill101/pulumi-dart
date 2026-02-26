enum NetworkPerformanceConfigTotalEgressBandwidthTier3 {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigTotalEgressBandwidthTier3(this.value);
  final String value;

  static NetworkPerformanceConfigTotalEgressBandwidthTier3 fromValue(
      String value) {
    for (final item
        in NetworkPerformanceConfigTotalEgressBandwidthTier3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkPerformanceConfigTotalEgressBandwidthTier3 value: $value');
  }
}
