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
  ListManagedClusterMonitoringUserCredentialsArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? serverFqdn,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      serverFqdn = pulumi.Input.asOptionalInput<String>(serverFqdn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'serverFqdn': ?serverFqdn,
    };
  }

  factory ListManagedClusterMonitoringUserCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterMonitoringUserCredentialsArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      serverFqdn: map['serverFqdn'] == null ? null : pulumi.Output.create<String>(map['serverFqdn'] as String),
    );
  }
}

