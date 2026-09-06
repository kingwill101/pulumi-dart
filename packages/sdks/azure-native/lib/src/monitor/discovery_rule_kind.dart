import 'package:pulumi/pulumi.dart' as pulumi;

/// Kind of the discovery rule
enum DiscoveryRuleKind implements pulumi.PulumiEnum<String> {
  resourceGraphQuery("ResourceGraphQuery"),
  applicationInsightsTopology("ApplicationInsightsTopology");

  const DiscoveryRuleKind(this.wireValue);
  @override
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
