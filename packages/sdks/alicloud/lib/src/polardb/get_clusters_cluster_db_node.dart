// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterDbNode {
  /// The create_time of the db_nodes.
  final pulumi.Input<String> createTime;
  /// The db_node_class of the db_nodes.
  final pulumi.Input<String> dbNodeClass;
  /// The db_node_id of the db_nodes.
  final pulumi.Input<String> dbNodeId;
  /// The db_node_role of the db_nodes.
  final pulumi.Input<String> dbNodeRole;
  /// The db_node_status of the db_nodes.
  final pulumi.Input<String> dbNodeStatus;
  /// The max_connections of the db_nodes.
  final pulumi.Input<int> maxConnections;
  /// The max_iops of the db_nodes.
  final pulumi.Input<int> maxIops;
  /// The region_id of the db_nodes.
  final pulumi.Input<String> regionId;
  /// The zone_id of the db_nodes.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetClustersClusterDbNode].
  /// [createTime] The create_time of the db_nodes.
  /// [dbNodeClass] The db_node_class of the db_nodes.
  /// [dbNodeId] The db_node_id of the db_nodes.
  /// [dbNodeRole] The db_node_role of the db_nodes.
  /// [dbNodeStatus] The db_node_status of the db_nodes.
  /// [maxConnections] The max_connections of the db_nodes.
  /// [maxIops] The max_iops of the db_nodes.
  /// [regionId] The region_id of the db_nodes.
  /// [zoneId] The zone_id of the db_nodes.
  GetClustersClusterDbNode({
    required this.createTime,
    required this.dbNodeClass,
    required this.dbNodeId,
    required this.dbNodeRole,
    required this.dbNodeStatus,
    required this.maxConnections,
    required this.maxIops,
    required this.regionId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dbNodeClass': dbNodeClass,
      'dbNodeId': dbNodeId,
      'dbNodeRole': dbNodeRole,
      'dbNodeStatus': dbNodeStatus,
      'maxConnections': maxConnections,
      'maxIops': maxIops,
      'regionId': regionId,
      'zoneId': zoneId,
    };
  }

  factory GetClustersClusterDbNode.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterDbNode(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbNodeClass: pulumi.Input.fromValue(map['dbNodeClass'] as String),
      dbNodeId: pulumi.Input.fromValue(map['dbNodeId'] as String),
      dbNodeRole: pulumi.Input.fromValue(map['dbNodeRole'] as String),
      dbNodeStatus: pulumi.Input.fromValue(map['dbNodeStatus'] as String),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxIops: pulumi.Input.fromValue(map['maxIops'] as int),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

