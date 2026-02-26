// ignore_for_file: unused_element, unnecessary_cast

class SnapshotClusterConfiguration {
  /// Description for the cluster.
  final String? description;

  /// The engine that will run on cluster nodes.
  final String? engine;

  /// Version number of the engine used by the cluster.
  final String? engineVersion;

  /// The weekly time range during which maintenance on the cluster is performed.
  final String? maintenanceWindow;

  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final String? name;

  /// Compute and memory capacity of the nodes in the cluster.
  final String? nodeType;

  /// Number of shards in the cluster.
  final int? numShards;

  /// Name of the parameter group associated with the cluster.
  final String? parameterGroupName;

  /// Port number on which the cluster accepts connections.
  final int? port;

  /// Number of days for which MemoryDB retains automatic snapshots before deleting them.
  final int? snapshotRetentionLimit;

  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard.
  final String? snapshotWindow;

  /// Name of the subnet group used by the cluster.
  final String? subnetGroupName;

  /// ARN of the SNS topic to which cluster notifications are sent.
  final String? topicArn;

  /// The VPC in which the cluster exists.
  final String? vpcId;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final numShardsValue = numShards;
    if (numShardsValue != null) {
      map['numShards'] = numShardsValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final snapshotRetentionLimitValue = snapshotRetentionLimit;
    if (snapshotRetentionLimitValue != null) {
      map['snapshotRetentionLimit'] = snapshotRetentionLimitValue;
    }
    final snapshotWindowValue = snapshotWindow;
    if (snapshotWindowValue != null) {
      map['snapshotWindow'] = snapshotWindowValue;
    }
    final subnetGroupNameValue = subnetGroupName;
    if (subnetGroupNameValue != null) {
      map['subnetGroupName'] = subnetGroupNameValue;
    }
    final topicArnValue = topicArn;
    if (topicArnValue != null) {
      map['topicArn'] = topicArnValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory SnapshotClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return SnapshotClusterConfiguration(
      description:
          map['description'] == null ? null : map['description'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      numShards: map['numShards'] == null ? null : map['numShards'] as int,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null
          ? null
          : map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] == null
          ? null
          : map['snapshotWindow'] as String,
      subnetGroupName: map['subnetGroupName'] == null
          ? null
          : map['subnetGroupName'] as String,
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
