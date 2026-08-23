// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_cluster_job_args_doc}
/// Arguments for getClusterJob.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_cluster_job_args_doc}
class GetClusterJobArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// Name of ClusterJob
  final pulumi.Input<String> jobsName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterJobArgs].
  /// [clusterName] The name of the cluster.
  /// [jobsName] Name of ClusterJob
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetClusterJobArgs({
    required this.clusterName,
    required this.jobsName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'jobsName': jobsName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterJobArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterJobArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      jobsName: pulumi.Input.fromValue(map['jobsName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
