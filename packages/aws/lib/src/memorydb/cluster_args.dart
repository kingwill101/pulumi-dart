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
    required String aclName,
    bool? autoMinorVersionUpgrade,
    bool? dataTiering,
    String? description,
    String? engine,
    String? engineVersion,
    String? finalSnapshotName,
    String? kmsKeyArn,
    String? maintenanceWindow,
    String? multiRegionClusterName,
    String? name,
    String? namePrefix,
    required String nodeType,
    int? numReplicasPerShard,
    int? numShards,
    String? parameterGroupName,
    int? port,
    String? region,
    List<String>? securityGroupIds,
    List<String>? snapshotArns,
    String? snapshotName,
    int? snapshotRetentionLimit,
    String? snapshotWindow,
    String? snsTopicArn,
    String? subnetGroupName,
    Map<String, String>? tags,
    bool? tlsEnabled,
  })  : aclName = pulumi.Input.asInput<String>(aclName),
        autoMinorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
        dataTiering = pulumi.Input.asOptionalInput<bool>(dataTiering),
        description = pulumi.Input.asOptionalInput<String>(description),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        finalSnapshotName =
            pulumi.Input.asOptionalInput<String>(finalSnapshotName),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<String>(maintenanceWindow),
        multiRegionClusterName =
            pulumi.Input.asOptionalInput<String>(multiRegionClusterName),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        nodeType = pulumi.Input.asInput<String>(nodeType),
        numReplicasPerShard =
            pulumi.Input.asOptionalInput<int>(numReplicasPerShard),
        numShards = pulumi.Input.asOptionalInput<int>(numShards),
        parameterGroupName =
            pulumi.Input.asOptionalInput<String>(parameterGroupName),
        port = pulumi.Input.asOptionalInput<int>(port),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        snapshotArns = pulumi.Input.asOptionalInput<List<String>>(snapshotArns),
        snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
        snapshotRetentionLimit =
            pulumi.Input.asOptionalInput<int>(snapshotRetentionLimit),
        snapshotWindow = pulumi.Input.asOptionalInput<String>(snapshotWindow),
        snsTopicArn = pulumi.Input.asOptionalInput<String>(snsTopicArn),
        subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aclName'] = aclName;
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final dataTieringValue = dataTiering;
    if (dataTieringValue != null) {
      map['dataTiering'] = dataTieringValue;
    }
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
    final finalSnapshotNameValue = finalSnapshotName;
    if (finalSnapshotNameValue != null) {
      map['finalSnapshotName'] = finalSnapshotNameValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final multiRegionClusterNameValue = multiRegionClusterName;
    if (multiRegionClusterNameValue != null) {
      map['multiRegionClusterName'] = multiRegionClusterNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['nodeType'] = nodeType;
    final numReplicasPerShardValue = numReplicasPerShard;
    if (numReplicasPerShardValue != null) {
      map['numReplicasPerShard'] = numReplicasPerShardValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final snapshotArnsValue = snapshotArns;
    if (snapshotArnsValue != null) {
      map['snapshotArns'] = snapshotArnsValue;
    }
    final snapshotNameValue = snapshotName;
    if (snapshotNameValue != null) {
      map['snapshotName'] = snapshotNameValue;
    }
    final snapshotRetentionLimitValue = snapshotRetentionLimit;
    if (snapshotRetentionLimitValue != null) {
      map['snapshotRetentionLimit'] = snapshotRetentionLimitValue;
    }
    final snapshotWindowValue = snapshotWindow;
    if (snapshotWindowValue != null) {
      map['snapshotWindow'] = snapshotWindowValue;
    }
    final snsTopicArnValue = snsTopicArn;
    if (snsTopicArnValue != null) {
      map['snsTopicArn'] = snsTopicArnValue;
    }
    final subnetGroupNameValue = subnetGroupName;
    if (subnetGroupNameValue != null) {
      map['subnetGroupName'] = subnetGroupNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tlsEnabledValue = tlsEnabled;
    if (tlsEnabledValue != null) {
      map['tlsEnabled'] = tlsEnabledValue;
    }
    return map;
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      aclName: map['aclName'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null
          ? null
          : map['autoMinorVersionUpgrade'] as bool,
      dataTiering:
          map['dataTiering'] == null ? null : map['dataTiering'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotName: map['finalSnapshotName'] == null
          ? null
          : map['finalSnapshotName'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      multiRegionClusterName: map['multiRegionClusterName'] == null
          ? null
          : map['multiRegionClusterName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      nodeType: map['nodeType'] as String,
      numReplicasPerShard: map['numReplicasPerShard'] == null
          ? null
          : map['numReplicasPerShard'] as int,
      numShards: map['numShards'] == null ? null : map['numShards'] as int,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      snapshotArns: map['snapshotArns'] == null
          ? null
          : (map['snapshotArns'] as List).cast<String>(),
      snapshotName:
          map['snapshotName'] == null ? null : map['snapshotName'] as String,
      snapshotRetentionLimit: map['snapshotRetentionLimit'] == null
          ? null
          : map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] == null
          ? null
          : map['snapshotWindow'] as String,
      snsTopicArn:
          map['snsTopicArn'] == null ? null : map['snsTopicArn'] as String,
      subnetGroupName: map['subnetGroupName'] == null
          ? null
          : map['subnetGroupName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tlsEnabled: map['tlsEnabled'] == null ? null : map['tlsEnabled'] as bool,
    );
  }
}
