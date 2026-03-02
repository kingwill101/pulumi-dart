// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target_response.dart';

/// The role management policy authentication context rule.
class RoleManagementPolicyAuthenticationContextRuleResponse {
  /// The claim value.
  final pulumi.Input<String>? claimValue;
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The value indicating if rule is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyAuthenticationContextRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse>? target;

  /// Creates a new [RoleManagementPolicyAuthenticationContextRuleResponse].
  /// [claimValue] The claim value.
  /// [id] The id of the rule.
  /// [isEnabled] The value indicating if rule is enabled.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyAuthenticationContextRuleResponse({
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
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyAuthenticationContextRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyAuthenticationContextRuleResponse(
      claimValue: map['claimValue'] == null ? null : (map['claimValue'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled'] as bool).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

