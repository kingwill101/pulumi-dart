// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_role_management_policy_args_doc}
/// The set of arguments for RoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_management_policy_args_doc}
class RoleManagementPolicyArgs {
  /// The role management policy description.
  final pulumi.Input<String?>? description;
  /// The role management policy display name.
  final pulumi.Input<String?>? displayName;
  /// The role management policy is default policy.
  final pulumi.Input<bool?>? isOrganizationDefault;
  /// The name (guid) of the role management policy to get.
  final pulumi.Input<String?>? roleManagementPolicyName;
  /// The rule applied to the policy.
  final pulumi.Input<List<dynamic>?>? rules;
  /// The role management policy scope.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleManagementPolicyArgs].
  /// [description] The role management policy description.
  /// [displayName] The role management policy display name.
  /// [isOrganizationDefault] The role management policy is default policy.
  /// [roleManagementPolicyName] The name (guid) of the role management policy to get.
  /// [rules] The rule applied to the policy.
  /// [scope] The role management policy scope.
  const RoleManagementPolicyArgs({
    this.description,
    this.displayName,
    this.isOrganizationDefault,
    this.roleManagementPolicyName,
    this.rules,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'isOrganizationDefault': ?isOrganizationDefault,
      'roleManagementPolicyName': ?roleManagementPolicyName,
      'rules': ?rules,
      'scope': scope,
    };
  }

  factory RoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isOrganizationDefault: (() { final guardedValue = map['isOrganizationDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleManagementPolicyName: (() { final guardedValue = map['roleManagementPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
