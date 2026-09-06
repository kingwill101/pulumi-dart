// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_managed_cluster_admin_credentials_args_doc}
/// Arguments for listManagedClusterAdminCredentials.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_managed_cluster_admin_credentials_args_doc}
class ListManagedClusterAdminCredentialsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// server fqdn type for credentials to be returned
  final pulumi.Input<String?>? serverFqdn;

  /// Creates a new [ListManagedClusterAdminCredentialsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [serverFqdn] server fqdn type for credentials to be returned
  const ListManagedClusterAdminCredentialsArgs({
    required this.resourceGroupName,
    required this.resourceName,
    this.serverFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'serverFqdn': ?serverFqdn,
    };
  }

  factory ListManagedClusterAdminCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterAdminCredentialsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      serverFqdn: (() { final guardedValue = map['serverFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
