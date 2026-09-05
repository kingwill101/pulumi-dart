// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotClusterConfiguration {
  /// Description for the cluster.
  final pulumi.Input<String?>? description;
  /// The engine that will run on cluster nodes.
  final pulumi.Input<String?>? engine;
  /// Version number of the engine used by the cluster.
  final pulumi.Input<String?>? engineVersion;
  /// The weekly time range during which maintenance on the cluster is performed.
  final pulumi.Input<String?>? maintenanceWindow;
  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  /// Compute and memory capacity of the nodes in the cluster.
  final pulumi.Input<String?>? nodeType;
  /// Number of shards in the cluster.
  final pulumi.Input<int?>? numShards;
  /// Name of the parameter group associated with the cluster.
  final pulumi.Input<String?>? parameterGroupName;
  /// Port number on which the cluster accepts connections.
  final pulumi.Input<int?>? port;
  /// Number of days for which MemoryDB retains automatic snapshots before deleting them.
  final pulumi.Input<int?>? snapshotRetentionLimit;
  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  final pulumi.Input<String?>? snapshotWindow;
  /// Name of the subnet group used by the cluster.
  final pulumi.Input<String?>? subnetGroupName;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final pulumi.Input<String?>? topicArn;
  /// The VPC in which the cluster exists.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [SnapshotClusterConfiguration].
  /// [description] Description for the cluster.
  /// [engine] The engine that will run on cluster nodes.
  /// [engineVersion] Version number of the engine used by the cluster.
  /// [maintenanceWindow] The weekly time range during which maintenance on the cluster is performed.
  /// [name] Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [nodeType] Compute and memory capacity of the nodes in the cluster.
  /// [numShards] Number of shards in the cluster.
  /// [parameterGroupName] Name of the parameter group associated with the cluster.
  /// [port] Port number on which the cluster accepts connections.
  /// [snapshotRetentionLimit] Number of days for which MemoryDB retains automatic snapshots before deleting them.
  /// [snapshotWindow] The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  /// [subnetGroupName] Name of the subnet group used by the cluster.
  /// [topicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [vpcId] The VPC in which the cluster exists.
  const SnapshotClusterConfiguration({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numShards: (() { final guardedValue = map['numShards']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicArn: (() { final guardedValue = map['topicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
