// ignore_for_file: unused_element, unnecessary_cast

class GetSnapshotClusterConfiguration {
  /// Description for the cluster.
  final String description;

  /// The engine that will run on cluster nodes.
  final String engine;

  /// Version number of the engine used by the cluster.
  final String engineVersion;

  /// The weekly time range during which maintenance on the cluster is performed.
  final String maintenanceWindow;

  /// Name of the snapshot.
  final String name;

  /// Compute and memory capacity of the nodes in the cluster.
  final String nodeType;

  /// Number of shards in the cluster.
  final int numShards;

  /// Name of the parameter group associated with the cluster.
  final String parameterGroupName;

  /// Port number on which the cluster accepts connections.
  final int port;

  /// Number of days for which MemoryDB retains automatic snapshots before deleting them.
  final int snapshotRetentionLimit;

  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  final String snapshotWindow;

  /// Name of the subnet group used by the cluster.
  final String subnetGroupName;

  /// ARN of the SNS topic to which cluster notifications are sent.
  final String topicArn;

  /// The VPC in which the cluster exists.
  final String vpcId;

  /// Creates a new [GetSnapshotClusterConfiguration].
  /// [description] Description for the cluster.
  /// [engine] The engine that will run on cluster nodes.
  /// [engineVersion] Version number of the engine used by the cluster.
  /// [maintenanceWindow] The weekly time range during which maintenance on the cluster is performed.
  /// [name] Name of the snapshot.
  /// [nodeType] Compute and memory capacity of the nodes in the cluster.
  /// [numShards] Number of shards in the cluster.
  /// [parameterGroupName] Name of the parameter group associated with the cluster.
  /// [port] Port number on which the cluster accepts connections.
  /// [snapshotRetentionLimit] Number of days for which MemoryDB retains automatic snapshots before deleting them.
  /// [snapshotWindow] The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  /// [subnetGroupName] Name of the subnet group used by the cluster.
  /// [topicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [vpcId] The VPC in which the cluster exists.
  GetSnapshotClusterConfiguration({
    required this.description,
    required this.engine,
    required this.engineVersion,
    required this.maintenanceWindow,
    required this.name,
    required this.nodeType,
    required this.numShards,
    required this.parameterGroupName,
    required this.port,
    required this.snapshotRetentionLimit,
    required this.snapshotWindow,
    required this.subnetGroupName,
    required this.topicArn,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'engine': engine,
      'engineVersion': engineVersion,
      'maintenanceWindow': maintenanceWindow,
      'name': name,
      'nodeType': nodeType,
      'numShards': numShards,
      'parameterGroupName': parameterGroupName,
      'port': port,
      'snapshotRetentionLimit': snapshotRetentionLimit,
      'snapshotWindow': snapshotWindow,
      'subnetGroupName': subnetGroupName,
      'topicArn': topicArn,
      'vpcId': vpcId,
    };
  }

  factory GetSnapshotClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return GetSnapshotClusterConfiguration(
      description: map['description'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      maintenanceWindow: map['maintenanceWindow'] as String,
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      numShards: map['numShards'] as int,
      parameterGroupName: map['parameterGroupName'] as String,
      port: map['port'] as int,
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] as String,
      subnetGroupName: map['subnetGroupName'] as String,
      topicArn: map['topicArn'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}
