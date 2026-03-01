// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_approval_rule.dart';

/// {@template pulumi_authorization_role_management_policy_args_doc}
/// The set of arguments for RoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_management_policy_args_doc}
class RoleManagementPolicyArgs {
  /// The role management policy description.
  final pulumi.Input<String>? description;
  /// The role management policy display name.
  final pulumi.Input<String>? displayName;
  /// The role management policy is default policy.
  final pulumi.Input<bool>? isOrganizationDefault;
  /// The name (guid) of the role management policy to upsert.
  final pulumi.Input<String>? roleManagementPolicyName;
  /// The rule applied to the policy.
  final pulumi.Input<List<RoleManagementPolicyApprovalRule>>? rules;
  /// The role management policy scope.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleManagementPolicyArgs].
  /// [description] The role management policy description.
  /// [displayName] The role management policy display name.
  /// [isOrganizationDefault] The role management policy is default policy.
  /// [roleManagementPolicyName] The name (guid) of the role management policy to upsert.
  /// [rules] The rule applied to the policy.
  /// [scope] The role management policy scope.
  RoleManagementPolicyArgs({
    String? description,
    String? displayName,
    bool? isOrganizationDefault,
    String? roleManagementPolicyName,
    List<RoleManagementPolicyApprovalRule>? rules,
    required String scope,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      isOrganizationDefault = pulumi.Input.asOptionalInput<bool>(isOrganizationDefault),
      roleManagementPolicyName = pulumi.Input.asOptionalInput<String>(roleManagementPolicyName),
      rules = pulumi.Input.asOptionalInput<List<RoleManagementPolicyApprovalRule>>(rules),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isOrganizationDefault': ?isOrganizationDefault,
      'roleManagementPolicyName': ?roleManagementPolicyName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RoleManagementPolicyApprovalRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RoleManagementPolicyApprovalRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scope': scope,
    };
  }

  factory RoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      isOrganizationDefault: map['isOrganizationDefault'] == null ? null : map['isOrganizationDefault'] as bool,
      roleManagementPolicyName: map['roleManagementPolicyName'] == null ? null : map['roleManagementPolicyName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RoleManagementPolicyApprovalRule>(map['rules'], (value) => RoleManagementPolicyApprovalRule.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
    );
  }
}

