// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_trusted_access_role_binding_args_doc}
/// The set of arguments for TrustedAccessRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_containerservice_trusted_access_role_binding_args_doc}
class TrustedAccessRoleBindingArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// A list of roles to bind, each item is a resource type qualified role name. For example: 'Microsoft.MachineLearningServices/workspaces/reader'.
  final pulumi.Input<List<String>> roles;
  /// The ARM resource ID of source resource that trusted access is configured for.
  final pulumi.Input<String> sourceResourceId;
  /// The name of trusted access role binding.
  final pulumi.Input<String>? trustedAccessRoleBindingName;

  /// Creates a new [TrustedAccessRoleBindingArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [roles] A list of roles to bind, each item is a resource type qualified role name. For example: 'Microsoft.MachineLearningServices/workspaces/reader'.
  /// [sourceResourceId] The ARM resource ID of source resource that trusted access is configured for.
  /// [trustedAccessRoleBindingName] The name of trusted access role binding.
  TrustedAccessRoleBindingArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.roles,
    required this.sourceResourceId,
    this.trustedAccessRoleBindingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'roles': roles,
      'sourceResourceId': sourceResourceId,
      'trustedAccessRoleBindingName': ?trustedAccessRoleBindingName,
    };
  }

  factory TrustedAccessRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return TrustedAccessRoleBindingArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      roles: ((map['roles'] as List).cast<String>()).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
      trustedAccessRoleBindingName: map['trustedAccessRoleBindingName'] == null ? null : (map['trustedAccessRoleBindingName']! as String).input(),
    );
  }
}

