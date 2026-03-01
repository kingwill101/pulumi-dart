// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_db_node.dart';

class GetClustersCluster {
  /// Billing method. Value options: `PostPaid` for Pay-As-You-Go and `PrePaid` for subscription.
  final String chargeType;
  /// PolarDB cluster connection string.
  final String connectionString;
  /// The create_time of the db_nodes.
  final String createTime;
  /// The db_node_class of the db_nodes.
  final String dbNodeClass;
  /// The DBNodeNumber of the PolarDB cluster.
  final int dbNodeNumber;
  /// The DBNodes of the PolarDB cluster.
  final List<GetClustersClusterDbNode> dbNodes;
  /// Database type. Options are `MySQL`, `Oracle` and `PostgreSQL`. If no value is specified, all types are returned.
  final String dbType;
  /// The DBVersion of the PolarDB cluster.
  final String dbVersion;
  /// The DeleteLock of the PolarDB cluster.
  final int deleteLock;
  /// The description of the PolarDB cluster.
  final String description;
  /// The database engine of the cluster, example: POLARDB.
  final String engine;
  /// Expiration time. Pay-As-You-Go clusters never expire.
  final String expireTime;
  /// The expired of the PolarDB cluster.
  final String expired;
  /// The ID of the PolarDB cluster.
  final String id;
  /// The LockMode of the PolarDB cluster.
  final String lockMode;
  /// The DBClusterNetworkType of the PolarDB cluster.
  final String networkType;
  /// PolarDB cluster connection port.
  final String port;
  /// The region_id of the db_nodes.
  final String regionId;
  /// status of the cluster.
  final String status;
  /// The StorageUsed of the PolarDB cluster.
  final int storageUsed;
  /// ID of the VPC the cluster belongs to.
  final String vpcId;
  /// The zone_id of the db_nodes.
  final String zoneId;

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
      'dbNodes': pulumi.Input.encodeList<GetClustersClusterDbNode, Map<String, dynamic>>(dbNodes, (value) => value.toMap()),
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
      chargeType: map['chargeType'] as String,
      connectionString: map['connectionString'] as String,
      createTime: map['createTime'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeNumber: map['dbNodeNumber'] as int,
      dbNodes: pulumi.Input.decodeList<GetClustersClusterDbNode>(map['dbNodes'], (value) => GetClustersClusterDbNode.fromMap((value as Map).cast<String, dynamic>())),
      dbType: map['dbType'] as String,
      dbVersion: map['dbVersion'] as String,
      deleteLock: map['deleteLock'] as int,
      description: map['description'] as String,
      engine: map['engine'] as String,
      expireTime: map['expireTime'] as String,
      expired: map['expired'] as String,
      id: map['id'] as String,
      lockMode: map['lockMode'] as String,
      networkType: map['networkType'] as String,
      port: map['port'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      storageUsed: map['storageUsed'] as int,
      vpcId: map['vpcId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

