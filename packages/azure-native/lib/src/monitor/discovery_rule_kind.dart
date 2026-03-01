/// Kind of the discovery rule
enum DiscoveryRuleKind {
  resourceGraphQuery("ResourceGraphQuery"),
  applicationInsightsTopology("ApplicationInsightsTopology");

  const DiscoveryRuleKind(this.value);
  final String value;

  static DiscoveryRuleKind fromValue(String value) {
    for (final item in DiscoveryRuleKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleKind value: $value');
  }
}

