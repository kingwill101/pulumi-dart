// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_managed_namespace_credential_args_doc}
/// Arguments for listManagedNamespaceCredential.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_managed_namespace_credential_args_doc}
class ListManagedNamespaceCredentialArgs {
  /// The name of the managed namespace.
  final pulumi.Input<String> managedNamespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListManagedNamespaceCredentialArgs].
  /// [managedNamespaceName] The name of the managed namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  ListManagedNamespaceCredentialArgs({
    required String managedNamespaceName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      managedNamespaceName = pulumi.Input.asInput<String>(managedNamespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNamespaceName': managedNamespaceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListManagedNamespaceCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedNamespaceCredentialArgs(
      managedNamespaceName: map['managedNamespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

