// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_db_node.dart';

class GetClustersCluster {
  /// Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  final pulumi.Input<String> chargeType;
  /// PolarDB cluster connection string.
  final pulumi.Input<String> connectionString;
  /// The create_time of the db_nodes.
  final pulumi.Input<String> createTime;
  /// The db_node_class of the db_nodes.
  final pulumi.Input<String> dbNodeClass;
  /// The DBNodeNumber of the PolarDB cluster.
  final pulumi.Input<int> dbNodeNumber;
  /// The DBNodes of the PolarDB cluster.
  final pulumi.Input<List<GetClustersClusterDbNode>> dbNodes;
  /// Database type. Options are `MySQL`, `Oracle` and `PostgreSQL`. If no value is specified, all types are returned.
  final pulumi.Input<String> dbType;
  /// The DBVersion of the PolarDB cluster.
  final pulumi.Input<String> dbVersion;
  /// The DeleteLock of the PolarDB cluster.
  final pulumi.Input<int> deleteLock;
  /// The description of the PolarDB cluster.
  final pulumi.Input<String> description;
  /// The database engine of the cluster, example: POLARDB.
  final pulumi.Input<String> engine;
  /// Expiration time. Pay-As-You-Go clusters never expire.
  final pulumi.Input<String> expireTime;
  /// The expired of the PolarDB cluster.
  final pulumi.Input<String> expired;
  /// The ID of the PolarDB cluster.
  final pulumi.Input<String> id;
  /// The LockMode of the PolarDB cluster.
  final pulumi.Input<String> lockMode;
  /// The DBClusterNetworkType of the PolarDB cluster.
  final pulumi.Input<String> networkType;
  /// PolarDB cluster connection port.
  final pulumi.Input<String> port;
  /// The region_id of the db_nodes.
  final pulumi.Input<String> regionId;
  /// status of the cluster.
  final pulumi.Input<String> status;
  /// The StorageUsed of the PolarDB cluster.
  final pulumi.Input<int> storageUsed;
  /// ID of the VPC the cluster belongs to.
  final pulumi.Input<String> vpcId;
  /// The zone_id of the db_nodes.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersCluster].
  /// [chargeType] Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  /// [connectionString] PolarDB cluster connection string.
  /// [createTime] The create_time of the db_nodes.
  /// [dbNodeClass] The db_node_class of the db_nodes.
  /// [dbNodeNumber] The DBNodeNumber of the PolarDB cluster.
  /// [dbNodes] The DBNodes of the PolarDB cluster.
  /// [dbType] Database type. Options are `MySQL`, `Oracle` and `PostgreSQL`. If no value is specified, all types are returned.
  /// [dbVersion] The DBVersion of the PolarDB cluster.
  /// [deleteLock] The DeleteLock of the PolarDB cluster.
  /// [description] The description of the PolarDB cluster.
  /// [engine] The database engine of the cluster, example: POLARDB.
  /// [expireTime] Expiration time. Pay-As-You-Go clusters never expire.
  /// [expired] The expired of the PolarDB cluster.
  /// [id] The ID of the PolarDB cluster.
  /// [lockMode] The LockMode of the PolarDB cluster.
  /// [networkType] The DBClusterNetworkType of the PolarDB cluster.
  /// [port] PolarDB cluster connection port.
  /// [regionId] The region_id of the db_nodes.
  /// [status] status of the cluster.
  /// [storageUsed] The StorageUsed of the PolarDB cluster.
  /// [vpcId] ID of the VPC the cluster belongs to.
  /// [zoneId] The zone_id of the db_nodes.
  GetClustersCluster({
    required this.chargeType,
    required this.connectionString,
    required this.createTime,
    required this.dbNodeClass,
    required this.dbNodeNumber,
    required this.dbNodes,
    required this.dbType,
    required this.dbVersion,
    required this.deleteLock,
    required this.description,
    required this.engine,
    required this.expireTime,
    required this.expired,
    required this.id,
    required this.lockMode,
    required this.networkType,
    required this.port,
    required this.regionId,
    required this.status,
    required this.storageUsed,
    required this.vpcId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chargeType': chargeType,
      'connectionString': connectionString,
      'createTime': createTime,
      'dbNodeClass': dbNodeClass,
      'dbNodeNumber': dbNodeNumber,
      'dbNodes': pulumi.Input.mapInputValue<List<GetClustersClusterDbNode>, List<Map<String, dynamic>>>(dbNodes, (value) => pulumi.Input.encodeList<GetClustersClusterDbNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbType': dbType,
      'dbVersion': dbVersion,
      'deleteLock': deleteLock,
      'description': description,
      'engine': engine,
      'expireTime': expireTime,
      'expired': expired,
      'id': id,
      'lockMode': lockMode,
      'networkType': networkType,
      'port': port,
      'regionId': regionId,
      'status': status,
      'storageUsed': storageUsed,
      'vpcId': vpcId,
      'zoneId': zoneId,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      chargeType: (map['chargeType'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      dbNodeClass: (map['dbNodeClass'] as String).input(),
      dbNodeNumber: (map['dbNodeNumber'] as int).input(),
      dbNodes: (pulumi.Input.decodeList<GetClustersClusterDbNode>(map['dbNodes'], (value) => GetClustersClusterDbNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dbType: (map['dbType'] as String).input(),
      dbVersion: (map['dbVersion'] as String).input(),
      deleteLock: (map['deleteLock'] as int).input(),
      description: (map['description'] as String).input(),
      engine: (map['engine'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      expired: (map['expired'] as String).input(),
      id: (map['id'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      port: (map['port'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
      storageUsed: (map['storageUsed'] as int).input(),
      vpcId: (map['vpcId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

