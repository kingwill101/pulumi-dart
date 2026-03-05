// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetes_get_connected_cluster_args_doc}
/// Arguments for getConnectedCluster.
/// {@endtemplate}
/// {@macro pulumi_kubernetes_get_connected_cluster_args_doc}
class GetConnectedClusterArgs {
  /// The name of the Kubernetes cluster on which get is called.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectedClusterArgs].
  /// [clusterName] The name of the Kubernetes cluster on which get is called.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectedClusterArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedClusterArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

