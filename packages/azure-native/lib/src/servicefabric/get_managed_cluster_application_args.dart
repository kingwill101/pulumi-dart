// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_args_doc}
/// Arguments for getManagedClusterApplication.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_args_doc}
class GetManagedClusterApplicationArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedClusterApplicationArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedClusterApplicationArgs({
    required String applicationName,
    required String clusterName,
    required String resourceGroupName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedClusterApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationArgs(
      applicationName: map['applicationName'] as String,
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

