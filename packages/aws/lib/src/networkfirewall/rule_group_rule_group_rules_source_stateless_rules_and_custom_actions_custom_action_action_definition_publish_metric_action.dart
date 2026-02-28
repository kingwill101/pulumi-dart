// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_group_rules_source_stateless_rules_and_custom_actions_custom_action_action_definition_publish_metric_action_dimension.dart';

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction {
  /// Set of configuration blocks containing the dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for details.
  final List<
          RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension>
      dimensions;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction].
  /// [dimensions] Set of configuration blocks containing the dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for details.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction({
    required this.dimensions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimensions'] = pulumi.Input.encodeList<
        RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension,
        Map<String, dynamic>>(dimensions, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricAction(
      dimensions: pulumi.Input.decodeList<
              RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension>(
          map['dimensions'],
          (value) =>
              RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
