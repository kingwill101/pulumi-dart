// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction {
  /// A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition
      actionDefinition;

  /// A friendly name of the custom action.
  final String actionName;

  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction({
    required this.actionDefinition,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionDefinition'] = actionDefinition.toMap();
    map['actionName'] = actionName;
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction(
      actionDefinition:
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition
              .fromMap(
                  (map['actionDefinition'] as Map).cast<String, dynamic>()),
      actionName: map['actionName'] as String,
    );
  }
}
