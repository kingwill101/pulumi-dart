// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_service_args_doc}
/// Arguments for getManagedClusterService.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_service_args_doc}
class GetManagedClusterServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetManagedClusterServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  GetManagedClusterServiceArgs({
    required String applicationName,
    required String clusterName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetManagedClusterServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterServiceArgs(
      applicationName: map['applicationName'] as String,
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

