// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction {
  /// A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition actionDefinition;
  /// A friendly name of the custom action.
  final String actionName;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction].
  /// [actionDefinition] A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  /// [actionName] A friendly name of the custom action.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction({
    required this.actionDefinition,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': actionDefinition.toMap(),
      'actionName': actionName,
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction(
      actionDefinition: RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition.fromMap((map['actionDefinition'] as Map).cast<String, dynamic>()),
      actionName: map['actionName'] as String,
    );
  }
}

