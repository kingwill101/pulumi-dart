// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule_action.dart';
import 'get_policy_rule_condition.dart';

class GetPolicyRule {
  final List<GetPolicyRuleAction>? actions;
  final List<GetPolicyRuleCondition>? conditions;
  /// Name of the policy which includes partion ( /partition/policy-name )
  final String name;

  /// Creates a new [GetPolicyRule].
  /// [actions] Optional.
  /// [conditions] Optional.
  /// [name] Name of the policy which includes partion ( /partition/policy-name )
  GetPolicyRule({
    this.actions,
    this.conditions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<GetPolicyRuleAction, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<GetPolicyRuleCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyRule(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<GetPolicyRuleAction>(map['actions'], (value) => GetPolicyRuleAction.fromMap((value as Map).cast<String, dynamic>())),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<GetPolicyRuleCondition>(map['conditions'], (value) => GetPolicyRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

