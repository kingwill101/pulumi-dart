enum NetworkPerformanceConfigExternalIpEgressBandwidthTier {
  default_("DEFAULT"),
  tier1("TIER_1");

  const NetworkPerformanceConfigExternalIpEgressBandwidthTier(this.value);
  final String value;

  static NetworkPerformanceConfigExternalIpEgressBandwidthTier fromValue(String value) {
    for (final item in NetworkPerformanceConfigExternalIpEgressBandwidthTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPerformanceConfigExternalIpEgressBandwidthTier value: $value');
  }
}

