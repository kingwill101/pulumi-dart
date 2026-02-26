// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition {
  /// Set of actions to take on a packet that matches one of the stateless rule definition's <span pulumi-lang-nodejs="`matchAttributes`" pulumi-lang-dotnet="`MatchAttributes`" pulumi-lang-go="`matchAttributes`" pulumi-lang-python="`match_attributes`" pulumi-lang-yaml="`matchAttributes`" pulumi-lang-java="`matchAttributes`">`match_attributes`</span>. For every rule you must specify 1 standard action, and you can add custom actions. Standard actions include: `aws:pass`, `aws:drop`, `aws:forward_to_sfe`.
  final List<String> actions;

  /// A configuration block containing criteria for AWS Network Firewall to use to inspect an individual packet in stateless rule inspection. See Match Attributes below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes
      matchAttributes;

  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition({
    required this.actions,
    required this.matchAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['matchAttributes'] = matchAttributes.toMap();
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition(
      actions: (map['actions'] as List).cast<String>(),
      matchAttributes:
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes
              .fromMap((map['matchAttributes'] as Map).cast<String, dynamic>()),
    );
  }
}
