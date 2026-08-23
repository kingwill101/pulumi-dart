// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_list_managed_cluster_monitoring_user_credentials_args_doc}
/// Arguments for listManagedClusterMonitoringUserCredentials.
/// {@endtemplate}
/// {@macro pulumi_containerservice_list_managed_cluster_monitoring_user_credentials_args_doc}
class ListManagedClusterMonitoringUserCredentialsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;
  /// server fqdn type for credentials to be returned
  final pulumi.Input<String>? serverFqdn;

  /// Creates a new [ListManagedClusterMonitoringUserCredentialsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  /// [serverFqdn] server fqdn type for credentials to be returned
  const ListManagedClusterMonitoringUserCredentialsArgs({
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

  factory ListManagedClusterMonitoringUserCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterMonitoringUserCredentialsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      serverFqdn: (() { final guardedValue = map['serverFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
