/// Whether to create relationships between the discovered entities based on a set of built-in rules. These relationships cannot be manually deleted.
enum DiscoveryRuleRelationshipDiscoveryBehavior {
  enabled("Enabled"),
  disabled("Disabled");

  const DiscoveryRuleRelationshipDiscoveryBehavior(this.value);
  final String value;

  static DiscoveryRuleRelationshipDiscoveryBehavior fromValue(String value) {
    for (final item in DiscoveryRuleRelationshipDiscoveryBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryRuleRelationshipDiscoveryBehavior value: $value');
  }
}

