/// Whether to add all recommended signals to the discovered entities.
enum DiscoveryRuleRecommendedSignalsBehavior {
  enabled("Enabled"),
  disabled("Disabled");

  const DiscoveryRuleRecommendedSignalsBehavior(this.value);
  final String value;

  static DiscoveryRuleRecommendedSignalsBehavior fromValue(String value) {
    for (final item in DiscoveryRuleRecommendedSignalsBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleRecommendedSignalsBehavior value: $value');
  }
}

