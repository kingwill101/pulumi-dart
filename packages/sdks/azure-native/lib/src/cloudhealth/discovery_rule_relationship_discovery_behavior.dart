import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
enum DiscoveryRuleRelationshipDiscoveryBehavior implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const DiscoveryRuleRelationshipDiscoveryBehavior(this.wireValue);
  @override
  final String wireValue;

  static DiscoveryRuleRelationshipDiscoveryBehavior fromValue(String value) {
    for (final item in DiscoveryRuleRelationshipDiscoveryBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleRelationshipDiscoveryBehavior value: $value');
  }
}
