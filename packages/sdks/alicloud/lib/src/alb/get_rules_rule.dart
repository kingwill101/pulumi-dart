// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_rule_action.dart';
import 'get_rules_rule_rule_condition.dart';

class GetRulesRule {
  /// The ID of the Rule.
  final pulumi.Input<String> id;

  /// The ID of the listener to which the forwarding rule belongs.
  final pulumi.Input<String> listenerId;

  /// The ID of the Application Load Balancer (ALB) instance to which the forwarding rule belongs.
  final pulumi.Input<String> loadBalancerId;

  /// The priority of the rule.
  final pulumi.Input<int> priority;

  /// The actions of the forwarding rules.
  final pulumi.Input<List<GetRulesRuleRuleAction>> ruleActions;

  /// The conditions of the forwarding rule.
  final pulumi.Input<List<GetRulesRuleRuleCondition>> ruleConditions;

  /// The ID of the Rule.
  final pulumi.Input<String> ruleId;

  /// The name of the forwarding rule.
  final pulumi.Input<String> ruleName;

  /// The status of the forwarding rule. Valid values: `Provisioning`, `Configuring`, `Available`.
  final pulumi.Input<String> status;

  /// Creates a new [GetRulesRule].
  /// [id] The ID of the Rule.
  /// [listenerId] The ID of the listener to which the forwarding rule belongs.
  /// [loadBalancerId] The ID of the Application Load Balancer (ALB) instance to which the forwarding rule belongs.
  /// [priority] The priority of the rule.
  /// [ruleActions] The actions of the forwarding rules.
  /// [ruleConditions] The conditions of the forwarding rule.
  /// [ruleId] The ID of the Rule.
  /// [ruleName] The name of the forwarding rule.
  /// [status] The status of the forwarding rule. Valid values: `Provisioning`, `Configuring`, `Available`.
  GetRulesRule({
    required this.id,
    required this.listenerId,
    required this.loadBalancerId,
    required this.priority,
    required this.ruleActions,
    required this.ruleConditions,
    required this.ruleId,
    required this.ruleName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'listenerId': listenerId,
      'loadBalancerId': loadBalancerId,
      'priority': priority,
      'ruleActions':
          pulumi.Input.mapInputValue<
            List<GetRulesRuleRuleAction>,
            List<Map<String, dynamic>>
          >(
            ruleActions,
            (value) =>
                pulumi.Input.encodeList<
                  GetRulesRuleRuleAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleConditions':
          pulumi.Input.mapInputValue<
            List<GetRulesRuleRuleCondition>,
            List<Map<String, dynamic>>
          >(
            ruleConditions,
            (value) =>
                pulumi.Input.encodeList<
                  GetRulesRuleRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleId': ruleId,
      'ruleName': ruleName,
      'status': status,
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      ruleActions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRulesRuleRuleAction>(
          map['ruleActions']!,
          (value) => GetRulesRuleRuleAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ruleConditions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRulesRuleRuleCondition>(
          map['ruleConditions']!,
          (value) => GetRulesRuleRuleCondition.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
