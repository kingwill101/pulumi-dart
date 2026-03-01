// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_hyperv_cluster_controller_cluster_args_doc}
/// Arguments for getHypervClusterControllerCluster.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_hyperv_cluster_controller_cluster_args_doc}
class GetHypervClusterControllerClusterArgs {
  /// Cluster ARM name
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;

  /// Creates a new [GetHypervClusterControllerClusterArgs].
  /// [clusterName] Cluster ARM name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  GetHypervClusterControllerClusterArgs({
    required String clusterName,
    required String resourceGroupName,
    required String siteName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
    };
  }

  factory GetHypervClusterControllerClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetHypervClusterControllerClusterArgs(
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
    );
  }
}

