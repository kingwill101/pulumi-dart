// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_managed_namespace_args_doc}
/// Arguments for getManagedNamespace.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_managed_namespace_args_doc}
class GetManagedNamespaceArgs {
  /// The name of the managed namespace.
  final pulumi.Input<String> managedNamespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetManagedNamespaceArgs].
  /// [managedNamespaceName] The name of the managed namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  GetManagedNamespaceArgs({
    required this.managedNamespaceName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNamespaceName': managedNamespaceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetManagedNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNamespaceArgs(
      managedNamespaceName: pulumi.Input.fromValue(map['managedNamespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

