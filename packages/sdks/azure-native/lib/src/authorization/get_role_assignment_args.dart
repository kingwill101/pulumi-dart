// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_assignment_args_doc}
/// Arguments for getRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_assignment_args_doc}
class GetRoleAssignmentArgs {
  /// The name of the role assignment. It can be any valid GUID.
  final pulumi.Input<String> roleAssignmentName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> scope;
  /// Tenant ID for cross-tenant request
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetRoleAssignmentArgs].
  /// [roleAssignmentName] The name of the role assignment. It can be any valid GUID.
  /// [scope] The fully qualified Azure Resource manager identifier of the resource.
  /// [tenantId] Tenant ID for cross-tenant request
  const GetRoleAssignmentArgs({
    required this.roleAssignmentName,
    required this.scope,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleAssignmentName': roleAssignmentName,
      'scope': scope,
      'tenantId': ?tenantId,
    };
  }

  factory GetRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArgs(
      roleAssignmentName: pulumi.Input.fromValue(map['roleAssignmentName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
