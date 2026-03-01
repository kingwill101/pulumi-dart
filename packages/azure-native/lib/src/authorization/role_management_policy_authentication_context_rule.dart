// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_rule_target.dart';

/// The role management policy authentication context rule.
class RoleManagementPolicyAuthenticationContextRule {
  /// The claim value.
  final String? claimValue;
  /// The id of the rule.
  final String? id;
  /// The value indicating if rule is enabled.
  final bool? isEnabled;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyAuthenticationContextRule'.
  final String ruleType;
  /// The target of the current rule.
  final RoleManagementPolicyRuleTarget? target;

  /// Creates a new [RoleManagementPolicyAuthenticationContextRule].
  /// [claimValue] The claim value.
  /// [id] The id of the rule.
  /// [isEnabled] The value indicating if rule is enabled.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyAuthenticationContextRule({
    this.claimValue,
    this.id,
    this.isEnabled,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimValue': ?claimValue,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'ruleType': ruleType,
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory RoleManagementPolicyAuthenticationContextRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyAuthenticationContextRule(
      claimValue: map['claimValue'] == null ? null : map['claimValue'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      ruleType: map['ruleType'] as String,
      target: map['target'] == null ? null : RoleManagementPolicyRuleTarget.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

