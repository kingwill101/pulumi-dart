import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to add all recommended signals to the discovered entities.
enum DiscoveryRuleRecommendedSignalsBehavior implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const DiscoveryRuleRecommendedSignalsBehavior(this.wireValue);
  @override
  final String wireValue;

  static DiscoveryRuleRecommendedSignalsBehavior fromValue(String value) {
    for (final item in DiscoveryRuleRecommendedSignalsBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleRecommendedSignalsBehavior value: $value');
  }
}
