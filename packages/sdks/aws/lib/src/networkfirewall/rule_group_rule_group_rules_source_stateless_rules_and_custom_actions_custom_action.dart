// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction {
  /// A configuration block describing the custom action associated with the `actionName`. See Action Definition below for details.
  final pulumi.Input<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition> actionDefinition;
  /// A friendly name of the custom action.
  final pulumi.Input<String> actionName;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction].
  /// [actionDefinition] A configuration block describing the custom action associated with the `actionName`. See Action Definition below for details.
  /// [actionName] A friendly name of the custom action.
  const RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction({
    required this.actionDefinition,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': pulumi.Input.mapInputValue<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition, Map<String, dynamic>>(actionDefinition, (value) => value.toMap()),
      'actionName': actionName,
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomAction(
      actionDefinition: pulumi.Input.fromValue(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition.fromMap((map['actionDefinition']! as Map).cast<String, dynamic>())),
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
    );
  }
}
