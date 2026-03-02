// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memorydb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_memorydb_cluster_cluster_args_doc}
class ClusterArgs {
  /// The name of the Access Control List to associate with the cluster.
  final pulumi.Input<String> aclName;
  /// When set to `true`, the cluster will automatically receive minor engine version upgrades after launch. Defaults to `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// Enables data tiering. This option is not supported by all instance types. For more information, see [Data tiering](https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).
  final pulumi.Input<bool>? dataTiering;
  /// Description for the cluster. Defaults to `"Managed by Pulumi"`.
  final pulumi.Input<String>? description;
  /// The engine that will run on your nodes. Supported values are `redis` and `valkey`.
  final pulumi.Input<String>? engine;
  /// Version number of the engine to be used for the cluster. Downgrades are not supported.
  final pulumi.Input<String>? engineVersion;
  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotName;
  /// ARN of the KMS key used to encrypt the cluster at rest.
  final pulumi.Input<String>? kmsKeyArn;
  /// Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  final pulumi.Input<String>? maintenanceWindow;
  /// The multi region cluster identifier specified on `aws.memorydb.MultiRegionCluster`.
  final pulumi.Input<String>? multiRegionClusterName;
  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The compute and memory capacity of the nodes in the cluster. See AWS documentation on [supported node types](https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.supportedtypes.html) as well as [vertical scaling](https://docs.aws.amazon.com/memorydb/latest/devguide/cluster-vertical-scaling.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> nodeType;
  /// The number of replicas to apply to each shard, up to a maximum of 5. Defaults to `1` (i.e. 2 nodes per shard).
  final pulumi.Input<int>? numReplicasPerShard;
  /// The number of shards in the cluster. Defaults to `1`.
  final pulumi.Input<int>? numShards;
  /// The name of the parameter group associated with the cluster.
  final pulumi.Input<String>? parameterGroupName;
  /// The port number on which each of the nodes accepts connections. Defaults to `6379`.
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of VPC Security Group ID-s to associate with this cluster.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas.
  final pulumi.Input<List<String>>? snapshotArns;
  /// The name of a snapshot from which to restore data into the new cluster.
  final pulumi.Input<String>? snapshotName;
  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled. Defaults to `0`.
  final pulumi.Input<int>? snapshotRetentionLimit;
  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  final pulumi.Input<String>? snapshotWindow;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final pulumi.Input<String>? snsTopicArn;
  /// The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets.
  final pulumi.Input<String>? subnetGroupName;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A flag to enable in-transit encryption on the cluster. When set to `false`, the `acl_name` must be `open-access`. Defaults to `true`.
  final pulumi.Input<bool>? tlsEnabled;

  /// Creates a new [ClusterArgs].
  /// [aclName] The name of the Access Control List to associate with the cluster.
  /// [autoMinorVersionUpgrade] When set to `true`, the cluster will automatically receive minor engine version upgrades after launch. Defaults to `true`.
  /// [dataTiering] Enables data tiering. This option is not supported by all instance types. For more information, see [Data tiering](https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).
  /// [description] Description for the cluster. Defaults to `"Managed by Pulumi"`.
  /// [engine] The engine that will run on your nodes. Supported values are `redis` and `valkey`.
  /// [engineVersion] Version number of the engine to be used for the cluster. Downgrades are not supported.
  /// [finalSnapshotName] Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the cluster at rest.
  /// [maintenanceWindow] Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  /// [multiRegionClusterName] The multi region cluster identifier specified on `aws.memorydb.MultiRegionCluster`.
  /// [name] Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [nodeType] The compute and memory capacity of the nodes in the cluster. See AWS documentation on [supported node types](https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.supportedtypes.html) as well as [vertical scaling](https://docs.aws.amazon.com/memorydb/latest/devguide/cluster-vertical-scaling.html).
  /// [numReplicasPerShard] The number of replicas to apply to each shard, up to a maximum of 5. Defaults to `1` (i.e. 2 nodes per shard).
  /// [numShards] The number of shards in the cluster. Defaults to `1`.
  /// [parameterGroupName] The name of the parameter group associated with the cluster.
  /// [port] The port number on which each of the nodes accepts connections. Defaults to `6379`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] Set of VPC Security Group ID-s to associate with this cluster.
  /// [snapshotArns] List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas.
  /// [snapshotName] The name of a snapshot from which to restore data into the new cluster.
  /// [snapshotRetentionLimit] The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled. Defaults to `0`.
  /// [snapshotWindow] The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  /// [snsTopicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [subnetGroupName] The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tlsEnabled] A flag to enable in-transit encryption on the cluster. When set to `false`, the `acl_name` must be `open-access`. Defaults to `true`.
  ClusterArgs({
    required this.aclName,
    this.autoMinorVersionUpgrade,
    this.dataTiering,
    this.description,
    this.engine,
    this.engineVersion,
    this.finalSnapshotName,
    this.kmsKeyArn,
    this.maintenanceWindow,
    this.multiRegionClusterName,
    this.name,
    this.namePrefix,
    required this.nodeType,
    this.numReplicasPerShard,
    this.numShards,
    this.parameterGroupName,
    this.port,
    this.region,
    this.securityGroupIds,
    this.snapshotArns,
    this.snapshotName,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.snsTopicArn,
    this.subnetGroupName,
    this.tags,
    this.tlsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclName': aclName,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'dataTiering': ?dataTiering,
      'description': ?description,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotName': ?finalSnapshotName,
      'kmsKeyArn': ?kmsKeyArn,
      'maintenanceWindow': ?maintenanceWindow,
      'multiRegionClusterName': ?multiRegionClusterName,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'nodeType': nodeType,
      'numReplicasPerShard': ?numReplicasPerShard,
      'numShards': ?numShards,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'snapshotArns': ?snapshotArns,
      'snapshotName': ?snapshotName,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'snsTopicArn': ?snsTopicArn,
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
      'tlsEnabled': ?tlsEnabled,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      aclName: (map['aclName'] as String).input(),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : ((map['autoMinorVersionUpgrade'] as bool).input()).input(),
      dataTiering: map['dataTiering'] == null ? null : ((map['dataTiering'] as bool).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      finalSnapshotName: map['finalSnapshotName'] == null ? null : ((map['finalSnapshotName'] as String).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : ((map['maintenanceWindow'] as String).input()).input(),
      multiRegionClusterName: map['multiRegionClusterName'] == null ? null : ((map['multiRegionClusterName'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      nodeType: (map['nodeType'] as String).input(),
      numReplicasPerShard: map['numReplicasPerShard'] == null ? null : ((map['numReplicasPerShard'] as int).input()).input(),
      numShards: map['numShards'] == null ? null : ((map['numShards'] as int).input()).input(),
      parameterGroupName: map['parameterGroupName'] == null ? null : ((map['parameterGroupName'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      snapshotArns: map['snapshotArns'] == null ? null : (((map['snapshotArns'] as List).cast<String>()).input()).input(),
      snapshotName: map['snapshotName'] == null ? null : ((map['snapshotName'] as String).input()).input(),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null ? null : ((map['snapshotRetentionLimit'] as int).input()).input(),
      snapshotWindow: map['snapshotWindow'] == null ? null : ((map['snapshotWindow'] as String).input()).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : ((map['snsTopicArn'] as String).input()).input(),
      subnetGroupName: map['subnetGroupName'] == null ? null : ((map['subnetGroupName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tlsEnabled: map['tlsEnabled'] == null ? null : ((map['tlsEnabled'] as bool).input()).input(),
    );
  }
}

