/// Whether to add all recommended signals to the discovered entities.
enum DiscoveryRuleRecommendedSignalsBehavior {
  enabled("Enabled"),
  disabled("Disabled");

  const DiscoveryRuleRecommendedSignalsBehavior(this.wireValue);
  final String wireValue;

  static DiscoveryRuleRecommendedSignalsBehavior fromValue(String value) {
    for (final item in DiscoveryRuleRecommendedSignalsBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DiscoveryRuleRecommendedSignalsBehavior value: $value',
    );
  }
}
