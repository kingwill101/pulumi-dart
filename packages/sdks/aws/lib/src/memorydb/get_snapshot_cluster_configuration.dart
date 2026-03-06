// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotClusterConfiguration {
  /// Description for the cluster.
  final pulumi.Input<String> description;
  /// The engine that will run on cluster nodes.
  final pulumi.Input<String> engine;
  /// Version number of the engine used by the cluster.
  final pulumi.Input<String> engineVersion;
  /// The weekly time range during which maintenance on the cluster is performed.
  final pulumi.Input<String> maintenanceWindow;
  /// Name of the snapshot.
  final pulumi.Input<String> name;
  /// Compute and memory capacity of the nodes in the cluster.
  final pulumi.Input<String> nodeType;
  /// Number of shards in the cluster.
  final pulumi.Input<int> numShards;
  /// Name of the parameter group associated with the cluster.
  final pulumi.Input<String> parameterGroupName;
  /// Port number on which the cluster accepts connections.
  final pulumi.Input<int> port;
  /// Number of days for which MemoryDB retains automatic snapshots before deleting them.
  final pulumi.Input<int> snapshotRetentionLimit;
  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  final pulumi.Input<String> snapshotWindow;
  /// Name of the subnet group used by the cluster.
  final pulumi.Input<String> subnetGroupName;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final pulumi.Input<String> topicArn;
  /// The VPC in which the cluster exists.
  final pulumi.Input<String> vpcId;

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
  const GetSnapshotClusterConfiguration({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      maintenanceWindow: pulumi.Input.fromValue(map['maintenanceWindow'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      numShards: pulumi.Input.fromValue(map['numShards'] as int),
      parameterGroupName: pulumi.Input.fromValue(map['parameterGroupName'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      snapshotRetentionLimit: pulumi.Input.fromValue(map['snapshotRetentionLimit'] as int),
      snapshotWindow: pulumi.Input.fromValue(map['snapshotWindow'] as String),
      subnetGroupName: pulumi.Input.fromValue(map['subnetGroupName'] as String),
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

