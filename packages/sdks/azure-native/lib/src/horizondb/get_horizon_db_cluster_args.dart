// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_horizondb_get_horizon_db_cluster_args_doc}
/// Arguments for getHorizonDbCluster.
/// {@endtemplate}
/// {@macro pulumi_horizondb_get_horizon_db_cluster_args_doc}
class GetHorizonDbClusterArgs {
  /// The name of the HorizonDB cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHorizonDbClusterArgs].
  /// [clusterName] The name of the HorizonDB cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHorizonDbClusterArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHorizonDbClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetHorizonDbClusterArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
