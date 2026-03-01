// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterDbNode {
  /// The create_time of the db_nodes.
  final String createTime;
  /// The db_node_class of the db_nodes.
  final String dbNodeClass;
  /// The db_node_id of the db_nodes.
  final String dbNodeId;
  /// The db_node_role of the db_nodes.
  final String dbNodeRole;
  /// The db_node_status of the db_nodes.
  final String dbNodeStatus;
  /// The max_connections of the db_nodes.
  final int maxConnections;
  /// The max_iops of the db_nodes.
  final int maxIops;
  /// The region_id of the db_nodes.
  final String regionId;
  /// The zone_id of the db_nodes.
  final String zoneId;

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
      createTime: map['createTime'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeId: map['dbNodeId'] as String,
      dbNodeRole: map['dbNodeRole'] as String,
      dbNodeStatus: map['dbNodeStatus'] as String,
      maxConnections: map['maxConnections'] as int,
      maxIops: map['maxIops'] as int,
      regionId: map['regionId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

