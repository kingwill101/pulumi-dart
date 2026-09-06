// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target_response.dart';
import 'user_set_response.dart';

/// The role management policy expiration rule.
class RoleManagementPolicyExpirationRuleResponse {
  /// The members not restricted by expiration rule.
  final pulumi.Input<List<UserSetResponse>?>? exceptionMembers;
  /// The id of the rule.
  final pulumi.Input<String?>? id;
  /// The value indicating whether expiration is required.
  final pulumi.Input<bool?>? isExpirationRequired;
  /// The maximum duration of expiration in timespan.
  final pulumi.Input<String?>? maximumDuration;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyExpirationRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTargetResponse?>? target;

  /// Creates a new [RoleManagementPolicyExpirationRuleResponse].
  /// [exceptionMembers] The members not restricted by expiration rule.
  /// [id] The id of the rule.
  /// [isExpirationRequired] The value indicating whether expiration is required.
  /// [maximumDuration] The maximum duration of expiration in timespan.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  const RoleManagementPolicyExpirationRuleResponse({
    this.exceptionMembers,
    this.id,
    this.isExpirationRequired,
    this.maximumDuration,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionMembers': ?pulumi.Input.mapOptionalInputValue<List<UserSetResponse>, List<Map<String, dynamic>>>(exceptionMembers, (value) => pulumi.Input.encodeList<UserSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isExpirationRequired': ?isExpirationRequired,
      'maximumDuration': ?maximumDuration,
      'ruleType': ruleType,
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyExpirationRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyExpirationRuleResponse(
      exceptionMembers: (() { final guardedValue = map['exceptionMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserSetResponse>(guardedValue, (value) => UserSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isExpirationRequired: (() { final guardedValue = map['isExpirationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumDuration: (() { final guardedValue = map['maximumDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyRuleTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
