// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination {
  /// An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4 and IPv6.
  final String addressDefinition;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination].
  /// [addressDefinition] An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4 and IPv6.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination({
    required this.addressDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'addressDefinition': addressDefinition};
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestination(
      addressDefinition: map['addressDefinition'] as String,
    );
  }
}
