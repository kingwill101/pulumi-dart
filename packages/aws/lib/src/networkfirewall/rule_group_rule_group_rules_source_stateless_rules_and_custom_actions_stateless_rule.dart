// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule {
  /// A setting that indicates the order in which to run this rule relative to all of the rules that are defined for a stateless rule group. AWS Network Firewall evaluates the rules in a rule group starting with the lowest priority setting.
  final int priority;

  /// A configuration block defining the stateless 5-tuple packet inspection criteria and the action to take on a packet that matches the criteria. See Rule Definition below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition
  ruleDefinition;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule].
  /// [priority] A setting that indicates the order in which to run this rule relative to all of the rules that are defined for a stateless rule group. AWS Network Firewall evaluates the rules in a rule group starting with the lowest priority setting.
  /// [ruleDefinition] A configuration block defining the stateless 5-tuple packet inspection criteria and the action to take on a packet that matches the criteria. See Rule Definition below for details.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule({
    required this.priority,
    required this.ruleDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'ruleDefinition': ruleDefinition.toMap(),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRule(
      priority: map['priority'] as int,
      ruleDefinition:
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition.fromMap(
            (map['ruleDefinition'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
