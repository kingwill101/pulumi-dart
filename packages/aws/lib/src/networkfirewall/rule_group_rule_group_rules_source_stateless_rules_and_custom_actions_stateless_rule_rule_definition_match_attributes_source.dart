// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource {
  /// An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4 and IPv6.
  final String addressDefinition;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource].
  /// [addressDefinition] An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4 and IPv6.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource({
    required this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressDefinition'] = addressDefinition;
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSource(
      addressDefinition: map['addressDefinition'] as String,
    );
  }
}
