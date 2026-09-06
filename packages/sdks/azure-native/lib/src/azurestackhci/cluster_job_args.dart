// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_cluster_job_args_doc}
/// The set of arguments for ClusterJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_cluster_job_args_doc}
class ClusterJobArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Name of ClusterJob
  final pulumi.Input<String?>? jobsName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ClusterJobArgs].
  /// [clusterName] The name of the cluster.
  /// [jobsName] Name of ClusterJob
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ClusterJobArgs({
    required this.clusterName,
    this.jobsName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'jobsName': ?jobsName,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ClusterJobArgs.fromMap(Map<String, dynamic> map) {
    return ClusterJobArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      jobsName: (() { final guardedValue = map['jobsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
