// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotClusterConfiguration {
  /// Description for the cluster.
  final pulumi.Input<String>? description;
  /// The engine that will run on cluster nodes.
  final pulumi.Input<String>? engine;
  /// Version number of the engine used by the cluster.
  final pulumi.Input<String>? engineVersion;
  /// The weekly time range during which maintenance on the cluster is performed.
  final pulumi.Input<String>? maintenanceWindow;
  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Compute and memory capacity of the nodes in the cluster.
  final pulumi.Input<String>? nodeType;
  /// Number of shards in the cluster.
  final pulumi.Input<int>? numShards;
  /// Name of the parameter group associated with the cluster.
  final pulumi.Input<String>? parameterGroupName;
  /// Port number on which the cluster accepts connections.
  final pulumi.Input<int>? port;
  /// Number of days for which MemoryDB retains automatic snapshots before deleting them.
  final pulumi.Input<int>? snapshotRetentionLimit;
  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  final pulumi.Input<String>? snapshotWindow;
  /// Name of the subnet group used by the cluster.
  final pulumi.Input<String>? subnetGroupName;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final pulumi.Input<String>? topicArn;
  /// The VPC in which the cluster exists.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [SnapshotClusterConfiguration].
  /// [description] Description for the cluster.
  /// [engine] The engine that will run on cluster nodes.
  /// [engineVersion] Version number of the engine used by the cluster.
  /// [maintenanceWindow] The weekly time range during which maintenance on the cluster is performed.
  /// [name] Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [nodeType] Compute and memory capacity of the nodes in the cluster.
  /// [numShards] Number of shards in the cluster.
  /// [parameterGroupName] Name of the parameter group associated with the cluster.
  /// [port] Port number on which the cluster accepts connections.
  /// [snapshotRetentionLimit] Number of days for which MemoryDB retains automatic snapshots before deleting them.
  /// [snapshotWindow] The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  /// [subnetGroupName] Name of the subnet group used by the cluster.
  /// [topicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [vpcId] The VPC in which the cluster exists.
  SnapshotClusterConfiguration({
    this.description,
    this.engine,
    this.engineVersion,
    this.maintenanceWindow,
    this.name,
    this.nodeType,
    this.numShards,
    this.parameterGroupName,
    this.port,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.subnetGroupName,
    this.topicArn,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'maintenanceWindow': ?maintenanceWindow,
      'name': ?name,
      'nodeType': ?nodeType,
      'numShards': ?numShards,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'subnetGroupName': ?subnetGroupName,
      'topicArn': ?topicArn,
      'vpcId': ?vpcId,
    };
  }

  factory SnapshotClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return SnapshotClusterConfiguration(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (map['maintenanceWindow'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      numShards: map['numShards'] == null ? null : (map['numShards'] as int).input(),
      parameterGroupName: map['parameterGroupName'] == null ? null : (map['parameterGroupName'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null ? null : (map['snapshotRetentionLimit'] as int).input(),
      snapshotWindow: map['snapshotWindow'] == null ? null : (map['snapshotWindow'] as String).input(),
      subnetGroupName: map['subnetGroupName'] == null ? null : (map['subnetGroupName'] as String).input(),
      topicArn: map['topicArn'] == null ? null : (map['topicArn'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

