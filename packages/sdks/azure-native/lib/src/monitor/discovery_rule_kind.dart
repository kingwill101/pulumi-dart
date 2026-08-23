/// Kind of the discovery rule
enum DiscoveryRuleKind {
  resourceGraphQuery("ResourceGraphQuery"),
  applicationInsightsTopology("ApplicationInsightsTopology");

  const DiscoveryRuleKind(this.wireValue);
  final String wireValue;

  static DiscoveryRuleKind fromValue(String value) {
    for (final item in DiscoveryRuleKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleKind value: $value');
  }
}
