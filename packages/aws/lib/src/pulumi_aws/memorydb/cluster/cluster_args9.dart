// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Cluster.
class ClusterArgs9 {
  /// The name of the Access Control List to associate with the cluster.
  final Input<String> aclName;

  /// When set to `true`, the cluster will automatically receive minor engine version upgrades after launch. Defaults to `true`.
  final Input<bool>? autoMinorVersionUpgrade;

  /// Enables data tiering. This option is not supported by all instance types. For more information, see [Data tiering](https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).
  final Input<bool>? dataTiering;

  /// Description for the cluster. Defaults to `"Managed by Pulumi"`.
  final Input<String>? description;

  /// The engine that will run on your nodes. Supported values are `redis` and `valkey`.
  final Input<String>? engine;

  /// Version number of the engine to be used for the cluster. Downgrades are not supported.
  final Input<String>? engineVersion;

  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotName;

  /// ARN of the KMS key used to encrypt the cluster at rest.
  final Input<String>? kmsKeyArn;

  /// Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  final Input<String>? maintenanceWindow;

  /// The multi region cluster identifier specified on `aws.memorydb.MultiRegionCluster`.
  final Input<String>? multiRegionClusterName;

  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final Input<String>? namePrefix;

  /// The compute and memory capacity of the nodes in the cluster. See AWS documentation on [supported node types](https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.supportedtypes.html) as well as [vertical scaling](https://docs.aws.amazon.com/memorydb/latest/devguide/cluster-vertical-scaling.html).
  ///
  /// The following arguments are optional:
  final Input<String> nodeType;

  /// The number of replicas to apply to each shard, up to a maximum of 5. Defaults to `1` (i.e. 2 nodes per shard).
  final Input<int>? numReplicasPerShard;

  /// The number of shards in the cluster. Defaults to `1`.
  final Input<int>? numShards;

  /// The name of the parameter group associated with the cluster.
  final Input<String>? parameterGroupName;

  /// The port number on which each of the nodes accepts connections. Defaults to `6379`.
  final Input<int>? port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set of VPC Security Group ID-s to associate with this cluster.
  final Input<List<String>>? securityGroupIds;

  /// List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas.
  final Input<List<String>>? snapshotArns;

  /// The name of a snapshot from which to restore data into the new cluster.
  final Input<String>? snapshotName;

  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled. Defaults to `0`.
  final Input<int>? snapshotRetentionLimit;

  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  final Input<String>? snapshotWindow;

  /// ARN of the SNS topic to which cluster notifications are sent.
  final Input<String>? snsTopicArn;

  /// The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets.
  final Input<String>? subnetGroupName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A flag to enable in-transit encryption on the cluster. When set to `false`, the `acl_name` must be `open-access`. Defaults to `true`.
  final Input<bool>? tlsEnabled;

  ClusterArgs9({
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

  factory ClusterArgs9.fromMap(Map<String, dynamic> map) {
    return ClusterArgs9(
      aclName: Input.asInput<String>(map['aclName']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      dataTiering: Input.asOptionalInput<bool>(map['dataTiering']),
      description: Input.asOptionalInput<String>(map['description']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotName:
          Input.asOptionalInput<String>(map['finalSnapshotName']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      multiRegionClusterName:
          Input.asOptionalInput<String>(map['multiRegionClusterName']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      nodeType: Input.asInput<String>(map['nodeType']),
      numReplicasPerShard:
          Input.asOptionalInput<int>(map['numReplicasPerShard']),
      numShards: Input.asOptionalInput<int>(map['numShards']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      port: Input.asOptionalInput<int>(map['port']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      snapshotArns: Input.asOptionalInput<List<String>>(map['snapshotArns']),
      snapshotName: Input.asOptionalInput<String>(map['snapshotName']),
      snapshotRetentionLimit:
          Input.asOptionalInput<int>(map['snapshotRetentionLimit']),
      snapshotWindow: Input.asOptionalInput<String>(map['snapshotWindow']),
      snsTopicArn: Input.asOptionalInput<String>(map['snsTopicArn']),
      subnetGroupName: Input.asOptionalInput<String>(map['subnetGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tlsEnabled: Input.asOptionalInput<bool>(map['tlsEnabled']),
    );
  }
}
