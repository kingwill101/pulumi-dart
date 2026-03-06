// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_trusted_access_role_binding_args_doc}
/// Arguments for getTrustedAccessRoleBinding.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_trusted_access_role_binding_args_doc}
class GetTrustedAccessRoleBindingArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// The name of trusted access role binding.
  final pulumi.Input<String> trustedAccessRoleBindingName;

  /// Creates a new [GetTrustedAccessRoleBindingArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [trustedAccessRoleBindingName] The name of trusted access role binding.
  const GetTrustedAccessRoleBindingArgs({
    required this.resourceGroupName,
    required this.resourceName,
    required this.trustedAccessRoleBindingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'trustedAccessRoleBindingName': trustedAccessRoleBindingName,
    };
  }

  factory GetTrustedAccessRoleBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustedAccessRoleBindingArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      trustedAccessRoleBindingName: pulumi.Input.fromValue(map['trustedAccessRoleBindingName'] as String),
    );
  }
}

