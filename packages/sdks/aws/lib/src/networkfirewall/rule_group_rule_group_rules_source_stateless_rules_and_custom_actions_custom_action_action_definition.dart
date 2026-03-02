// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition_publish_metric_action.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition {
  /// A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.
  final pulumi.Input<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction> publishMetricAction;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition].
  /// [publishMetricAction] A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition({
    required this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction': pulumi.Input.mapInputValue<RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction, Map<String, dynamic>>(publishMetricAction, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinition(
      publishMetricAction: (RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction.fromMap((map['publishMetricAction']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

