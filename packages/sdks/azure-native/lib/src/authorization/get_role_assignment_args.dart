// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_role_assignment_args_doc}
/// Arguments for getRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_role_assignment_args_doc}
class GetRoleAssignmentArgs {
  /// The name of the role assignment. It can be any valid GUID.
  final pulumi.Input<String> roleAssignmentName;
  /// The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  final pulumi.Input<String> scope;
  /// Tenant ID for cross-tenant request
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetRoleAssignmentArgs].
  /// [roleAssignmentName] The name of the role assignment. It can be any valid GUID.
  /// [scope] The scope of the operation or resource. Valid scopes are: subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'
  /// [tenantId] Tenant ID for cross-tenant request
  GetRoleAssignmentArgs({
    required pulumi.Output<String> roleAssignmentName,
    required pulumi.Output<String> scope,
    pulumi.Output<String>? tenantId,
  }) :
      roleAssignmentName = pulumi.Input.asInput<String>(roleAssignmentName),
      scope = pulumi.Input.asInput<String>(scope),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleAssignmentName': roleAssignmentName,
      'scope': scope,
      'tenantId': ?tenantId,
    };
  }

  factory GetRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentArgs(
      roleAssignmentName: pulumi.Output.create<String>(map['roleAssignmentName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

