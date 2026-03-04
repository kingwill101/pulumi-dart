// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_stateless_rule_rule_definition_match_attributes.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition {
  /// Set of actions to take on a packet that matches one of the stateless rule definition's `match_attributes`. For every rule you must specify 1 standard action, and you can add custom actions. Standard actions include: `aws:pass`, `aws:drop`, `aws:forward_to_sfe`.
  final pulumi.Input<List<String>> actions;

  /// A configuration block containing criteria for AWS Network Firewall to use to inspect an individual packet in stateless rule inspection. See Match Attributes below for details.
  final pulumi.Input<
    RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes
  >
  matchAttributes;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition].
  /// [actions] Set of actions to take on a packet that matches one of the stateless rule definition's `match_attributes`. For every rule you must specify 1 standard action, and you can add custom actions. Standard actions include: `aws:pass`, `aws:drop`, `aws:forward_to_sfe`.
  /// [matchAttributes] A configuration block containing criteria for AWS Network Firewall to use to inspect an individual packet in stateless rule inspection. See Match Attributes below for details.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition({
    required this.actions,
    required this.matchAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'matchAttributes':
          pulumi.Input.mapInputValue<
            RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes,
            Map<String, dynamic>
          >(matchAttributes, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinition(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      matchAttributes: pulumi.Input.fromValue(
        RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributes.fromMap(
          (map['matchAttributes']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
