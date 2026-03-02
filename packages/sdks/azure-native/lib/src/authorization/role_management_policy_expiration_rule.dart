// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_rule_target.dart';
import 'user_set.dart';

/// The role management policy expiration rule.
class RoleManagementPolicyExpirationRule {
  /// The members not restricted by expiration rule.
  final pulumi.Input<List<UserSet>>? exceptionMembers;
  /// The id of the rule.
  final pulumi.Input<String>? id;
  /// The value indicating whether expiration is required.
  final pulumi.Input<bool>? isExpirationRequired;
  /// The maximum duration of expiration in timespan.
  final pulumi.Input<String>? maximumDuration;
  /// The type of rule
  /// Expected value is 'RoleManagementPolicyExpirationRule'.
  final pulumi.Input<String> ruleType;
  /// The target of the current rule.
  final pulumi.Input<RoleManagementPolicyRuleTarget>? target;

  /// Creates a new [RoleManagementPolicyExpirationRule].
  /// [exceptionMembers] The members not restricted by expiration rule.
  /// [id] The id of the rule.
  /// [isExpirationRequired] The value indicating whether expiration is required.
  /// [maximumDuration] The maximum duration of expiration in timespan.
  /// [ruleType] The type of rule
  /// [target] The target of the current rule.
  RoleManagementPolicyExpirationRule({
    this.exceptionMembers,
    this.id,
    this.isExpirationRequired,
    this.maximumDuration,
    required this.ruleType,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptionMembers': ?pulumi.Input.mapOptionalInputValue<List<UserSet>, List<Map<String, dynamic>>>(exceptionMembers, (value) => pulumi.Input.encodeList<UserSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'isExpirationRequired': ?isExpirationRequired,
      'maximumDuration': ?maximumDuration,
      'ruleType': ruleType,
      'target': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyRuleTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyExpirationRule.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyExpirationRule(
      exceptionMembers: map['exceptionMembers'] == null ? null : (pulumi.Input.decodeList<UserSet>(map['exceptionMembers'], (value) => UserSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isExpirationRequired: map['isExpirationRequired'] == null ? null : (map['isExpirationRequired'] as bool).input(),
      maximumDuration: map['maximumDuration'] == null ? null : (map['maximumDuration'] as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      target: map['target'] == null ? null : (RoleManagementPolicyRuleTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

