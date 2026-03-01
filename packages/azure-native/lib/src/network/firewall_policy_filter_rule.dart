// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_rule_condition.dart';
import 'firewall_policy_filter_rule_action.dart';

/// Firewall Policy Filter Rule.
class FirewallPolicyFilterRule {
  /// The action type of a Filter rule.
  final FirewallPolicyFilterRuleAction? action;
  /// The name of the rule.
  final String? name;
  /// Priority of the Firewall Policy Rule resource.
  final int? priority;
  /// Collection of rule conditions used by a rule.
  final List<ApplicationRuleCondition>? ruleConditions;
  /// The type of the rule.
  /// Expected value is 'FirewallPolicyFilterRule'.
  final String ruleType;

  /// Creates a new [FirewallPolicyFilterRule].
  /// [action] The action type of a Filter rule.
  /// [name] The name of the rule.
  /// [priority] Priority of the Firewall Policy Rule resource.
  /// [ruleConditions] Collection of rule conditions used by a rule.
  /// [ruleType] The type of the rule.
  FirewallPolicyFilterRule({
    this.action,
    this.name,
    this.priority,
    this.ruleConditions,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'name': ?name,
      'priority': ?priority,
      'ruleConditions': ?ruleConditions == null ? null : pulumi.Input.encodeList<ApplicationRuleCondition, Map<String, dynamic>>(ruleConditions!, (value) => value.toMap()),
      'ruleType': ruleType,
    };
  }

  factory FirewallPolicyFilterRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRule(
      action: map['action'] == null ? null : FirewallPolicyFilterRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      ruleConditions: map['ruleConditions'] == null ? null : pulumi.Input.decodeList<ApplicationRuleCondition>(map['ruleConditions'], (value) => ApplicationRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      ruleType: map['ruleType'] as String,
    );
  }
}

