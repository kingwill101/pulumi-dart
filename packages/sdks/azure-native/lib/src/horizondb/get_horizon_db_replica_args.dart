// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_horizondb_get_horizon_db_replica_args_doc}
/// Arguments for getHorizonDbReplica.
/// {@endtemplate}
/// {@macro pulumi_horizondb_get_horizon_db_replica_args_doc}
class GetHorizonDbReplicaArgs {
  /// The name of the HorizonDB cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the HorizonDB pool.
  final pulumi.Input<String> poolName;
  /// The name of the HorizonDB replica.
  final pulumi.Input<String> replicaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHorizonDbReplicaArgs].
  /// [clusterName] The name of the HorizonDB cluster.
  /// [poolName] The name of the HorizonDB pool.
  /// [replicaName] The name of the HorizonDB replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetHorizonDbReplicaArgs({
    required this.clusterName,
    required this.poolName,
    required this.replicaName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'poolName': poolName,
      'replicaName': replicaName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHorizonDbReplicaArgs.fromMap(Map<String, dynamic> map) {
    return GetHorizonDbReplicaArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      replicaName: pulumi.Input.fromValue(map['replicaName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
