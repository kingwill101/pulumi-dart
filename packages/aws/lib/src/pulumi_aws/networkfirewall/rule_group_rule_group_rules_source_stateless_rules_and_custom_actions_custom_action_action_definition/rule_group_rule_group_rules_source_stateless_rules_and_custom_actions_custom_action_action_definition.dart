// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition_publish_metric_action/rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition_publish_metric_action.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition {
  /// A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.
  final RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction
      publishMetricAction;

  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition({
    required this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publishMetricAction'] = publishMetricAction.toMap();
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition(
      publishMetricAction:
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction
              .fromMap(
                  (map['publishMetricAction'] as Map).cast<String, dynamic>()),
    );
  }
}
