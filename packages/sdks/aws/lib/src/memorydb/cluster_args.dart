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
    required pulumi.Output<String> aclName,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<bool>? dataTiering,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? finalSnapshotName,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? maintenanceWindow,
    pulumi.Output<String>? multiRegionClusterName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    required pulumi.Output<String> nodeType,
    pulumi.Output<int>? numReplicasPerShard,
    pulumi.Output<int>? numShards,
    pulumi.Output<String>? parameterGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? snapshotArns,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<int>? snapshotRetentionLimit,
    pulumi.Output<String>? snapshotWindow,
    pulumi.Output<String>? snsTopicArn,
    pulumi.Output<String>? subnetGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? tlsEnabled,
  }) :
      aclName = pulumi.Input.asInput<String>(aclName),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      dataTiering = pulumi.Input.asOptionalInput<bool>(dataTiering),
      description = pulumi.Input.asOptionalInput<String>(description),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      finalSnapshotName = pulumi.Input.asOptionalInput<String>(finalSnapshotName),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      maintenanceWindow = pulumi.Input.asOptionalInput<String>(maintenanceWindow),
      multiRegionClusterName = pulumi.Input.asOptionalInput<String>(multiRegionClusterName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      nodeType = pulumi.Input.asInput<String>(nodeType),
      numReplicasPerShard = pulumi.Input.asOptionalInput<int>(numReplicasPerShard),
      numShards = pulumi.Input.asOptionalInput<int>(numShards),
      parameterGroupName = pulumi.Input.asOptionalInput<String>(parameterGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      snapshotArns = pulumi.Input.asOptionalInput<List<String>>(snapshotArns),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      snapshotRetentionLimit = pulumi.Input.asOptionalInput<int>(snapshotRetentionLimit),
      snapshotWindow = pulumi.Input.asOptionalInput<String>(snapshotWindow),
      snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
      subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled);

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
      aclName: pulumi.Output.create<String>(map['aclName'] as String),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      dataTiering: map['dataTiering'] == null ? null : pulumi.Output.create<bool>(map['dataTiering'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      finalSnapshotName: map['finalSnapshotName'] == null ? null : pulumi.Output.create<String>(map['finalSnapshotName'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['maintenanceWindow'] as String),
      multiRegionClusterName: map['multiRegionClusterName'] == null ? null : pulumi.Output.create<String>(map['multiRegionClusterName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      nodeType: pulumi.Output.create<String>(map['nodeType'] as String),
      numReplicasPerShard: map['numReplicasPerShard'] == null ? null : pulumi.Output.create<int>(map['numReplicasPerShard'] as int),
      numShards: map['numShards'] == null ? null : pulumi.Output.create<int>(map['numShards'] as int),
      parameterGroupName: map['parameterGroupName'] == null ? null : pulumi.Output.create<String>(map['parameterGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      snapshotArns: map['snapshotArns'] == null ? null : pulumi.Output.create<List<String>>((map['snapshotArns'] as List).cast<String>()),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null ? null : pulumi.Output.create<int>(map['snapshotRetentionLimit'] as int),
      snapshotWindow: map['snapshotWindow'] == null ? null : pulumi.Output.create<String>(map['snapshotWindow'] as String),
      snsTopicArn: map['snsTopicArn'] == null ? null : pulumi.Output.create<String>(map['snsTopicArn'] as String),
      subnetGroupName: map['subnetGroupName'] == null ? null : pulumi.Output.create<String>(map['subnetGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tlsEnabled: map['tlsEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsEnabled'] as bool),
    );
  }
}

