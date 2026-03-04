// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule_action.dart';

class RuleGroupActivatedRule {
  /// Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.
  final pulumi.Input<RuleGroupActivatedRuleAction> action;

  /// Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value.
  final pulumi.Input<int> priority;

  /// The ID of a rule
  final pulumi.Input<String> ruleId;
  final pulumi.Input<String>? type;

  /// Creates a new [RuleGroupActivatedRule].
  /// [action] Specifies the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.
  /// [priority] Specifies the order in which the rules are evaluated. Rules with a lower value are evaluated before rules with a higher value.
  /// [ruleId] The ID of a rule
  /// [type] Optional.
  RuleGroupActivatedRule({
    required this.action,
    required this.priority,
    required this.ruleId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          pulumi.Input.mapInputValue<
            RuleGroupActivatedRuleAction,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'priority': priority,
      'ruleId': ruleId,
      'type': ?type,
    };
  }

  factory RuleGroupActivatedRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupActivatedRule(
      action: pulumi.Input.fromValue(
        RuleGroupActivatedRuleAction.fromMap(
          (map['action']! as Map).cast<String, dynamic>(),
        ),
      ),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
