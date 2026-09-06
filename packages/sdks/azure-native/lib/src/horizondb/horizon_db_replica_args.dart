// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_replica_properties.dart';

/// {@template pulumi_horizondb_horizon_db_replica_args_doc}
/// The set of arguments for HorizonDbReplica.
/// {@endtemplate}
/// {@macro pulumi_horizondb_horizon_db_replica_args_doc}
class HorizonDbReplicaArgs {
  /// The name of the HorizonDB cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the HorizonDB pool.
  final pulumi.Input<String> poolName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<HorizonDbReplicaProperties?>? properties;
  /// The name of the HorizonDB replica.
  final pulumi.Input<String?>? replicaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HorizonDbReplicaArgs].
  /// [clusterName] The name of the HorizonDB cluster.
  /// [poolName] The name of the HorizonDB pool.
  /// [properties] The resource-specific properties for this resource.
  /// [replicaName] The name of the HorizonDB replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const HorizonDbReplicaArgs({
    required this.clusterName,
    required this.poolName,
    this.properties,
    this.replicaName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'poolName': poolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<HorizonDbReplicaProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'replicaName': ?replicaName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HorizonDbReplicaArgs.fromMap(Map<String, dynamic> map) {
    return HorizonDbReplicaArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizonDbReplicaProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicaName: (() { final guardedValue = map['replicaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
