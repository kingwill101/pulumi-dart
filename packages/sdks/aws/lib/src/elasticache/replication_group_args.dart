// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_group_log_delivery_configuration.dart';
import 'replication_group_node_group_configuration.dart';

/// {@template pulumi_elasticache_replication_group_replication_group_args_doc}
/// The set of arguments for ReplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_replication_group_replication_group_args_doc}
class ReplicationGroupArgs {
  /// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Whether to enable encryption at rest.
  /// When `engine` is `redis`, default is `false`.
  /// When `engine` is `valkey`, default is `true`.
  final pulumi.Input<bool>? atRestEncryptionEnabled;
  /// Password used to access a password protected server. Can be specified only if `transitEncryptionEnabled = true`.
  final pulumi.Input<String>? authToken;
  /// Strategy used when modifying `authToken` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `authToken` must be omitted.
  final pulumi.Input<String>? authTokenUpdateStrategy;
  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `numCacheClusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  final pulumi.Input<bool>? automaticFailoverEnabled;
  /// Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  final pulumi.Input<String>? clusterMode;
  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  final pulumi.Input<bool>? dataTieringEnabled;
  /// User-created description for the replication group. Must not be empty.
  final pulumi.Input<String> description;
  /// Specifies the durability mode for the replication group. Valid values are `default`, `async`, `sync`, or `disabled`. Requires cluster mode enabled and Valkey 9.0 or higher.
  final pulumi.Input<String>? durability;
  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis`.
  final pulumi.Input<String>? engine;
  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  final pulumi.Input<String>? engineVersion;
  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;
  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `globalReplicationGroupId` is set, the `numNodeGroups` parameter cannot be set.
  final pulumi.Input<String>? globalReplicationGroupId;
  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  final pulumi.Input<String>? ipDiscovery;
  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `atRestEncryptionEnabled = true`.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  final pulumi.Input<List<ReplicationGroupLogDeliveryConfiguration>>? logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  final pulumi.Input<String>? maintenanceWindow;
  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If `true`, `automaticFailoverEnabled` must also be enabled.
  /// Defaults to `false`.
  final pulumi.Input<bool>? multiAzEnabled;
  /// The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dualStack`.
  final pulumi.Input<String>? networkType;
  /// Configuration block for node groups (shards). Can be specified only if `numNodeGroups` is set. Conflicts with `preferredCacheClusterAzs`. See Node Group Configuration below for more details.
  final pulumi.Input<List<ReplicationGroupNodeGroupConfiguration>>? nodeGroupConfigurations;
  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless `globalReplicationGroupId` is set.
  /// Cannot be set if `globalReplicationGroupId` is set.
  final pulumi.Input<String>? nodeType;
  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final pulumi.Input<String>? notificationTopicArn;
  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If `automaticFailoverEnabled` or `multiAzEnabled` are `true`, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with `numNodeGroups` and `replicasPerNodeGroup`.
  /// Defaults to `1`.
  final pulumi.Input<int>? numCacheClusters;
  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with `numCacheClusters`.
  final pulumi.Input<int>? numNodeGroups;
  /// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter `cluster-enabled` set to true.
  final pulumi.Input<String>? parameterGroupName;
  /// Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
  final pulumi.Input<int>? port;
  /// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
  final pulumi.Input<List<String>>? preferredCacheClusterAzs;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Number of replica nodes in each node group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Default AWS limit is 5. Higher values may be available with a quota increase.
  /// Conflicts with `numCacheClusters`.
  /// Can only be set if `numNodeGroups` is set.
  final pulumi.Input<int>? replicasPerNodeGroup;
  /// Replication group identifier. This parameter is stored as a lowercase string.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? replicationGroupId;
  /// IDs of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Names of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  final pulumi.Input<List<String>>? securityGroupNames;
  /// List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
  final pulumi.Input<List<String>>? snapshotArns;
  /// Name of a snapshot from which to restore data into the new node group. Changing the `snapshotName` forces a new resource.
  final pulumi.Input<String>? snapshotName;
  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshotRetentionLimit` is set to zero (0), backups are turned off. Please note that setting a `snapshotRetentionLimit` is not supported on cache.t1.micro cache nodes
  final pulumi.Input<int>? snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  final pulumi.Input<String>? snapshotWindow;
  /// Name of the cache subnet group to be used for the replication group.
  final pulumi.Input<String>? subnetGroupName;
  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether to enable encryption in transit.
  /// Changing this argument with an `engineVersion` &lt; `7.0.5` will force a replacement.
  /// Engine versions prior to `7.0.5` only allow this transit encryption to be configured during creation of the replication group.
  final pulumi.Input<bool>? transitEncryptionEnabled;
  /// A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// Valid values are `preferred` and `required`.
  /// When enabling encryption on an existing replication group, this must first be set to `preferred` before setting it to `required` in a subsequent apply.
  /// See the `TransitEncryptionMode` field in the [`CreateReplicationGroup` API documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateReplicationGroup.html) for additional details.
  final pulumi.Input<String>? transitEncryptionMode;
  /// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  final pulumi.Input<List<String>>? userGroupIds;

  /// Creates a new [ReplicationGroupArgs].
  /// [applyImmediately] Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`.
  /// [atRestEncryptionEnabled] Whether to enable encryption at rest.
  /// [authToken] Password used to access a password protected server. Can be specified only if `transitEncryptionEnabled = true`.
  /// [authTokenUpdateStrategy] Strategy used when modifying `authToken` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `authToken` must be omitted.
  /// [autoMinorVersionUpgrade] Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// [automaticFailoverEnabled] Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `numCacheClusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  /// [clusterMode] Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  /// [dataTieringEnabled] Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  /// [description] User-created description for the replication group. Must not be empty.
  /// [durability] Specifies the durability mode for the replication group. Valid values are `default`, `async`, `sync`, or `disabled`. Requires cluster mode enabled and Valkey 9.0 or higher.
  /// [engine] Name of the cache engine to be used for the clusters in this replication group.
  /// [engineVersion] Version number of the cache engine to be used for the cache clusters in this replication group.
  /// [finalSnapshotIdentifier] The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  /// [globalReplicationGroupId] The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `globalReplicationGroupId` is set, the `numNodeGroups` parameter cannot be set.
  /// [ipDiscovery] The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  /// [kmsKeyId] The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `atRestEncryptionEnabled = true`.
  /// [logDeliveryConfigurations] Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  /// [maintenanceWindow] Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  /// [multiAzEnabled] Specifies whether to enable Multi-AZ Support for the replication group.
  /// [networkType] The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dualStack`.
  /// [nodeGroupConfigurations] Configuration block for node groups (shards). Can be specified only if `numNodeGroups` is set. Conflicts with `preferredCacheClusterAzs`. See Node Group Configuration below for more details.
  /// [nodeType] Instance class to be used.
  /// [notificationTopicArn] ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  /// [numCacheClusters] Number of cache clusters (primary and replicas) this replication group will have.
  /// [numNodeGroups] Number of node groups (shards) for this Redis replication group.
  /// [parameterGroupName] Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter `cluster-enabled` set to true.
  /// [port] Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
  /// [preferredCacheClusterAzs] List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicasPerNodeGroup] Number of replica nodes in each node group.
  /// [replicationGroupId] Replication group identifier. This parameter is stored as a lowercase string.
  /// [securityGroupIds] IDs of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  /// [securityGroupNames] Names of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  /// [snapshotArns] List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
  /// [snapshotName] Name of a snapshot from which to restore data into the new node group. Changing the `snapshotName` forces a new resource.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshotRetentionLimit` is set to zero (0), backups are turned off. Please note that setting a `snapshotRetentionLimit` is not supported on cache.t1.micro cache nodes
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  /// [subnetGroupName] Name of the cache subnet group to be used for the replication group.
  /// [tags] Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitEncryptionEnabled] Whether to enable encryption in transit.
  /// [transitEncryptionMode] A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// [userGroupIds] User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  const ReplicationGroupArgs({
    this.applyImmediately,
    this.atRestEncryptionEnabled,
    this.authToken,
    this.authTokenUpdateStrategy,
    this.autoMinorVersionUpgrade,
    this.automaticFailoverEnabled,
    this.clusterMode,
    this.dataTieringEnabled,
    required this.description,
    this.durability,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.globalReplicationGroupId,
    this.ipDiscovery,
    this.kmsKeyId,
    this.logDeliveryConfigurations,
    this.maintenanceWindow,
    this.multiAzEnabled,
    this.networkType,
    this.nodeGroupConfigurations,
    this.nodeType,
    this.notificationTopicArn,
    this.numCacheClusters,
    this.numNodeGroups,
    this.parameterGroupName,
    this.port,
    this.preferredCacheClusterAzs,
    this.region,
    this.replicasPerNodeGroup,
    this.replicationGroupId,
    this.securityGroupIds,
    this.securityGroupNames,
    this.snapshotArns,
    this.snapshotName,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.subnetGroupName,
    this.tags,
    this.transitEncryptionEnabled,
    this.transitEncryptionMode,
    this.userGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'atRestEncryptionEnabled': ?atRestEncryptionEnabled,
      'authToken': ?authToken,
      'authTokenUpdateStrategy': ?authTokenUpdateStrategy,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'clusterMode': ?clusterMode,
      'dataTieringEnabled': ?dataTieringEnabled,
      'description': description,
      'durability': ?durability,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'globalReplicationGroupId': ?globalReplicationGroupId,
      'ipDiscovery': ?ipDiscovery,
      'kmsKeyId': ?kmsKeyId,
      'logDeliveryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ReplicationGroupLogDeliveryConfiguration>, List<Map<String, dynamic>>>(logDeliveryConfigurations, (value) => pulumi.Input.encodeList<ReplicationGroupLogDeliveryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceWindow': ?maintenanceWindow,
      'multiAzEnabled': ?multiAzEnabled,
      'networkType': ?networkType,
      'nodeGroupConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ReplicationGroupNodeGroupConfiguration>, List<Map<String, dynamic>>>(nodeGroupConfigurations, (value) => pulumi.Input.encodeList<ReplicationGroupNodeGroupConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeType': ?nodeType,
      'notificationTopicArn': ?notificationTopicArn,
      'numCacheClusters': ?numCacheClusters,
      'numNodeGroups': ?numNodeGroups,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'preferredCacheClusterAzs': ?preferredCacheClusterAzs,
      'region': ?region,
      'replicasPerNodeGroup': ?replicasPerNodeGroup,
      'replicationGroupId': ?replicationGroupId,
      'securityGroupIds': ?securityGroupIds,
      'securityGroupNames': ?securityGroupNames,
      'snapshotArns': ?snapshotArns,
      'snapshotName': ?snapshotName,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
      'transitEncryptionEnabled': ?transitEncryptionEnabled,
      'transitEncryptionMode': ?transitEncryptionMode,
      'userGroupIds': ?userGroupIds,
    };
  }

  factory ReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationGroupArgs(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      atRestEncryptionEnabled: (() { final guardedValue = map['atRestEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authToken: (() { final guardedValue = map['authToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authTokenUpdateStrategy: (() { final guardedValue = map['authTokenUpdateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterMode: (() { final guardedValue = map['clusterMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTieringEnabled: (() { final guardedValue = map['dataTieringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      durability: (() { final guardedValue = map['durability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalSnapshotIdentifier: (() { final guardedValue = map['finalSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalReplicationGroupId: (() { final guardedValue = map['globalReplicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipDiscovery: (() { final guardedValue = map['ipDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDeliveryConfigurations: (() { final guardedValue = map['logDeliveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationGroupLogDeliveryConfiguration>(guardedValue, (value) => ReplicationGroupLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAzEnabled: (() { final guardedValue = map['multiAzEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupConfigurations: (() { final guardedValue = map['nodeGroupConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationGroupNodeGroupConfiguration>(guardedValue, (value) => ReplicationGroupNodeGroupConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationTopicArn: (() { final guardedValue = map['notificationTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numCacheClusters: (() { final guardedValue = map['numCacheClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numNodeGroups: (() { final guardedValue = map['numNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preferredCacheClusterAzs: (() { final guardedValue = map['preferredCacheClusterAzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicasPerNodeGroup: (() { final guardedValue = map['replicasPerNodeGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupNames: (() { final guardedValue = map['securityGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotArns: (() { final guardedValue = map['snapshotArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitEncryptionEnabled: (() { final guardedValue = map['transitEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitEncryptionMode: (() { final guardedValue = map['transitEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupIds: (() { final guardedValue = map['userGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
