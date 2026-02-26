// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_group_log_delivery_configuration/replication_group_log_delivery_configuration.dart';
import '../replication_group_node_group_configuration/replication_group_node_group_configuration.dart';

/// The set of arguments for ReplicationGroup.
class ReplicationGroupArgs {
  /// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// Whether to enable encryption at rest.
  /// When <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> is <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>, default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  /// When <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> is <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>, default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? atRestEncryptionEnabled;

  /// Password used to access a password protected server. Can be specified only if <span pulumi-lang-nodejs="`transitEncryptionEnabled " pulumi-lang-dotnet="`TransitEncryptionEnabled " pulumi-lang-go="`transitEncryptionEnabled " pulumi-lang-python="`transit_encryption_enabled " pulumi-lang-yaml="`transitEncryptionEnabled " pulumi-lang-java="`transitEncryptionEnabled ">`transit_encryption_enabled </span>= true`.
  final Input<String>? authToken;

  /// Strategy used when modifying <span pulumi-lang-nodejs="`authToken`" pulumi-lang-dotnet="`AuthToken`" pulumi-lang-go="`authToken`" pulumi-lang-python="`auth_token`" pulumi-lang-yaml="`authToken`" pulumi-lang-java="`authToken`">`auth_token`</span> on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then <span pulumi-lang-nodejs="`authToken`" pulumi-lang-dotnet="`AuthToken`" pulumi-lang-go="`authToken`" pulumi-lang-python="`auth_token`" pulumi-lang-yaml="`authToken`" pulumi-lang-java="`authToken`">`auth_token`</span> must be omitted.
  final Input<String>? authTokenUpdateStrategy;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? autoMinorVersionUpgrade;

  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, <span pulumi-lang-nodejs="`numCacheClusters`" pulumi-lang-dotnet="`NumCacheClusters`" pulumi-lang-go="`numCacheClusters`" pulumi-lang-python="`num_cache_clusters`" pulumi-lang-yaml="`numCacheClusters`" pulumi-lang-java="`numCacheClusters`">`num_cache_clusters`</span> must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? automaticFailoverEnabled;

  /// Specifies whether cluster mode is enabled or disabled. Valid values are <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> or <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span> or <span pulumi-lang-nodejs="`compatible`" pulumi-lang-dotnet="`Compatible`" pulumi-lang-go="`compatible`" pulumi-lang-python="`compatible`" pulumi-lang-yaml="`compatible`" pulumi-lang-java="`compatible`">`compatible`</span>
  final Input<String>? clusterMode;

  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> when using r6gd nodes.
  final Input<bool>? dataTieringEnabled;

  /// User-created description for the replication group. Must not be empty.
  final Input<String> description;

  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> or <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>.
  /// Default is <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>.
  final Input<String>? engine;

  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below.
  final Input<String>? engineVersion;

  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotIdentifier;

  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If <span pulumi-lang-nodejs="`globalReplicationGroupId`" pulumi-lang-dotnet="`GlobalReplicationGroupId`" pulumi-lang-go="`globalReplicationGroupId`" pulumi-lang-python="`global_replication_group_id`" pulumi-lang-yaml="`globalReplicationGroupId`" pulumi-lang-java="`globalReplicationGroupId`">`global_replication_group_id`</span> is set, the <span pulumi-lang-nodejs="`numNodeGroups`" pulumi-lang-dotnet="`NumNodeGroups`" pulumi-lang-go="`numNodeGroups`" pulumi-lang-python="`num_node_groups`" pulumi-lang-yaml="`numNodeGroups`" pulumi-lang-java="`numNodeGroups`">`num_node_groups`</span> parameter cannot be set.
  final Input<String>? globalReplicationGroupId;

  /// The IP version to advertise in the discovery protocol. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final Input<String>? ipDiscovery;

  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if <span pulumi-lang-nodejs="`atRestEncryptionEnabled " pulumi-lang-dotnet="`AtRestEncryptionEnabled " pulumi-lang-go="`atRestEncryptionEnabled " pulumi-lang-python="`at_rest_encryption_enabled " pulumi-lang-yaml="`atRestEncryptionEnabled " pulumi-lang-java="`atRestEncryptionEnabled ">`at_rest_encryption_enabled </span>= true`.
  final Input<String>? kmsKeyId;

  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  final Input<List<ReplicationGroupLogDeliveryConfiguration>>?
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  final Input<String>? maintenanceWindow;

  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, <span pulumi-lang-nodejs="`automaticFailoverEnabled`" pulumi-lang-dotnet="`AutomaticFailoverEnabled`" pulumi-lang-go="`automaticFailoverEnabled`" pulumi-lang-python="`automatic_failover_enabled`" pulumi-lang-yaml="`automaticFailoverEnabled`" pulumi-lang-java="`automaticFailoverEnabled`">`automatic_failover_enabled`</span> must also be enabled.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? multiAzEnabled;

  /// The IP versions for cache cluster connections. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span> or <span pulumi-lang-nodejs="`dualStack`" pulumi-lang-dotnet="`DualStack`" pulumi-lang-go="`dualStack`" pulumi-lang-python="`dual_stack`" pulumi-lang-yaml="`dualStack`" pulumi-lang-java="`dualStack`">`dual_stack`</span>.
  final Input<String>? networkType;

  /// Configuration block for node groups (shards). Can be specified only if <span pulumi-lang-nodejs="`numNodeGroups`" pulumi-lang-dotnet="`NumNodeGroups`" pulumi-lang-go="`numNodeGroups`" pulumi-lang-python="`num_node_groups`" pulumi-lang-yaml="`numNodeGroups`" pulumi-lang-java="`numNodeGroups`">`num_node_groups`</span> is set. Conflicts with <span pulumi-lang-nodejs="`preferredCacheClusterAzs`" pulumi-lang-dotnet="`PreferredCacheClusterAzs`" pulumi-lang-go="`preferredCacheClusterAzs`" pulumi-lang-python="`preferred_cache_cluster_azs`" pulumi-lang-yaml="`preferredCacheClusterAzs`" pulumi-lang-java="`preferredCacheClusterAzs`">`preferred_cache_cluster_azs`</span>. See Node Group Configuration below for more details.
  final Input<List<ReplicationGroupNodeGroupConfiguration>>?
      nodeGroupConfigurations;

  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless <span pulumi-lang-nodejs="`globalReplicationGroupId`" pulumi-lang-dotnet="`GlobalReplicationGroupId`" pulumi-lang-go="`globalReplicationGroupId`" pulumi-lang-python="`global_replication_group_id`" pulumi-lang-yaml="`globalReplicationGroupId`" pulumi-lang-java="`globalReplicationGroupId`">`global_replication_group_id`</span> is set.
  /// Cannot be set if <span pulumi-lang-nodejs="`globalReplicationGroupId`" pulumi-lang-dotnet="`GlobalReplicationGroupId`" pulumi-lang-go="`globalReplicationGroupId`" pulumi-lang-python="`global_replication_group_id`" pulumi-lang-yaml="`globalReplicationGroupId`" pulumi-lang-java="`globalReplicationGroupId`">`global_replication_group_id`</span> is set.
  final Input<String>? nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final Input<String>? notificationTopicArn;

  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If <span pulumi-lang-nodejs="`automaticFailoverEnabled`" pulumi-lang-dotnet="`AutomaticFailoverEnabled`" pulumi-lang-go="`automaticFailoverEnabled`" pulumi-lang-python="`automatic_failover_enabled`" pulumi-lang-yaml="`automaticFailoverEnabled`" pulumi-lang-java="`automaticFailoverEnabled`">`automatic_failover_enabled`</span> or <span pulumi-lang-nodejs="`multiAzEnabled`" pulumi-lang-dotnet="`MultiAzEnabled`" pulumi-lang-go="`multiAzEnabled`" pulumi-lang-python="`multi_az_enabled`" pulumi-lang-yaml="`multiAzEnabled`" pulumi-lang-java="`multiAzEnabled`">`multi_az_enabled`</span> are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with <span pulumi-lang-nodejs="`numNodeGroups`" pulumi-lang-dotnet="`NumNodeGroups`" pulumi-lang-go="`numNodeGroups`" pulumi-lang-python="`num_node_groups`" pulumi-lang-yaml="`numNodeGroups`" pulumi-lang-java="`numNodeGroups`">`num_node_groups`</span> and <span pulumi-lang-nodejs="`replicasPerNodeGroup`" pulumi-lang-dotnet="`ReplicasPerNodeGroup`" pulumi-lang-go="`replicasPerNodeGroup`" pulumi-lang-python="`replicas_per_node_group`" pulumi-lang-yaml="`replicasPerNodeGroup`" pulumi-lang-java="`replicasPerNodeGroup`">`replicas_per_node_group`</span>.
  /// Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final Input<int>? numCacheClusters;

  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with <span pulumi-lang-nodejs="`numCacheClusters`" pulumi-lang-dotnet="`NumCacheClusters`" pulumi-lang-go="`numCacheClusters`" pulumi-lang-python="`num_cache_clusters`" pulumi-lang-yaml="`numCacheClusters`" pulumi-lang-java="`numCacheClusters`">`num_cache_clusters`</span>.
  final Input<int>? numNodeGroups;

  /// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter `cluster-enabled` set to true.
  final Input<String>? parameterGroupName;

  /// Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
  final Input<int>? port;

  /// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
  final Input<List<String>>? preferredCacheClusterAzs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Number of replica nodes in each node group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Valid values are 0 to 5.
  /// Conflicts with <span pulumi-lang-nodejs="`numCacheClusters`" pulumi-lang-dotnet="`NumCacheClusters`" pulumi-lang-go="`numCacheClusters`" pulumi-lang-python="`num_cache_clusters`" pulumi-lang-yaml="`numCacheClusters`" pulumi-lang-java="`numCacheClusters`">`num_cache_clusters`</span>.
  /// Can only be set if <span pulumi-lang-nodejs="`numNodeGroups`" pulumi-lang-dotnet="`NumNodeGroups`" pulumi-lang-go="`numNodeGroups`" pulumi-lang-python="`num_node_groups`" pulumi-lang-yaml="`numNodeGroups`" pulumi-lang-java="`numNodeGroups`">`num_node_groups`</span> is set.
  final Input<int>? replicasPerNodeGroup;

  /// Replication group identifier. This parameter is stored as a lowercase string.
  ///
  /// The following arguments are optional:
  final Input<String>? replicationGroupId;

  /// IDs of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  final Input<List<String>>? securityGroupIds;

  /// Names of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  final Input<List<String>>? securityGroupNames;

  /// List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
  final Input<List<String>>? snapshotArns;

  /// Name of a snapshot from which to restore data into the new node group. Changing the <span pulumi-lang-nodejs="`snapshotName`" pulumi-lang-dotnet="`SnapshotName`" pulumi-lang-go="`snapshotName`" pulumi-lang-python="`snapshot_name`" pulumi-lang-yaml="`snapshotName`" pulumi-lang-java="`snapshotName`">`snapshot_name`</span> forces a new resource.
  final Input<String>? snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of <span pulumi-lang-nodejs="`snapshotRetentionLimit`" pulumi-lang-dotnet="`SnapshotRetentionLimit`" pulumi-lang-go="`snapshotRetentionLimit`" pulumi-lang-python="`snapshot_retention_limit`" pulumi-lang-yaml="`snapshotRetentionLimit`" pulumi-lang-java="`snapshotRetentionLimit`">`snapshot_retention_limit`</span> is set to zero (0), backups are turned off. Please note that setting a <span pulumi-lang-nodejs="`snapshotRetentionLimit`" pulumi-lang-dotnet="`SnapshotRetentionLimit`" pulumi-lang-go="`snapshotRetentionLimit`" pulumi-lang-python="`snapshot_retention_limit`" pulumi-lang-yaml="`snapshotRetentionLimit`" pulumi-lang-java="`snapshotRetentionLimit`">`snapshot_retention_limit`</span> is not supported on cache.t1.micro cache nodes
  final Input<int>? snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  final Input<String>? snapshotWindow;

  /// Name of the cache subnet group to be used for the replication group.
  final Input<String>? subnetGroupName;

  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Whether to enable encryption in transit.
  /// Changing this argument with an <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> < `7.0.5` will force a replacement.
  /// Engine versions prior to `7.0.5` only allow this transit encryption to be configured during creation of the replication group.
  final Input<bool>? transitEncryptionEnabled;

  /// A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// Valid values are <span pulumi-lang-nodejs="`preferred`" pulumi-lang-dotnet="`Preferred`" pulumi-lang-go="`preferred`" pulumi-lang-python="`preferred`" pulumi-lang-yaml="`preferred`" pulumi-lang-java="`preferred`">`preferred`</span> and <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span>.
  /// When enabling encryption on an existing replication group, this must first be set to <span pulumi-lang-nodejs="`preferred`" pulumi-lang-dotnet="`Preferred`" pulumi-lang-go="`preferred`" pulumi-lang-python="`preferred`" pulumi-lang-yaml="`preferred`" pulumi-lang-java="`preferred`">`preferred`</span> before setting it to <span pulumi-lang-nodejs="`required`" pulumi-lang-dotnet="`Required`" pulumi-lang-go="`required`" pulumi-lang-python="`required`" pulumi-lang-yaml="`required`" pulumi-lang-java="`required`">`required`</span> in a subsequent apply.
  /// See the `TransitEncryptionMode` field in the [`CreateReplicationGroup` API documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateReplicationGroup.html) for additional details.
  final Input<String>? transitEncryptionMode;

  /// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  final Input<List<String>>? userGroupIds;

  ReplicationGroupArgs({
    this.applyImmediately,
    this.atRestEncryptionEnabled,
    this.authToken,
    this.authTokenUpdateStrategy,
    this.autoMinorVersionUpgrade,
    this.automaticFailoverEnabled,
    this.clusterMode,
    this.dataTieringEnabled,
    required this.description,
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
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final atRestEncryptionEnabledValue = atRestEncryptionEnabled;
    if (atRestEncryptionEnabledValue != null) {
      map['atRestEncryptionEnabled'] = atRestEncryptionEnabledValue;
    }
    final authTokenValue = authToken;
    if (authTokenValue != null) {
      map['authToken'] = authTokenValue;
    }
    final authTokenUpdateStrategyValue = authTokenUpdateStrategy;
    if (authTokenUpdateStrategyValue != null) {
      map['authTokenUpdateStrategy'] = authTokenUpdateStrategyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final automaticFailoverEnabledValue = automaticFailoverEnabled;
    if (automaticFailoverEnabledValue != null) {
      map['automaticFailoverEnabled'] = automaticFailoverEnabledValue;
    }
    final clusterModeValue = clusterMode;
    if (clusterModeValue != null) {
      map['clusterMode'] = clusterModeValue;
    }
    final dataTieringEnabledValue = dataTieringEnabled;
    if (dataTieringEnabledValue != null) {
      map['dataTieringEnabled'] = dataTieringEnabledValue;
    }
    map['description'] = description;
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final finalSnapshotIdentifierValue = finalSnapshotIdentifier;
    if (finalSnapshotIdentifierValue != null) {
      map['finalSnapshotIdentifier'] = finalSnapshotIdentifierValue;
    }
    final globalReplicationGroupIdValue = globalReplicationGroupId;
    if (globalReplicationGroupIdValue != null) {
      map['globalReplicationGroupId'] = globalReplicationGroupIdValue;
    }
    final ipDiscoveryValue = ipDiscovery;
    if (ipDiscoveryValue != null) {
      map['ipDiscovery'] = ipDiscoveryValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final logDeliveryConfigurationsValue = logDeliveryConfigurations;
    if (logDeliveryConfigurationsValue != null) {
      map['logDeliveryConfigurations'] = Input.mapOptionalInputValue<
              List<ReplicationGroupLogDeliveryConfiguration>,
              List<Map<String, dynamic>>>(
          logDeliveryConfigurationsValue,
          (value) => Input.encodeList<ReplicationGroupLogDeliveryConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final multiAzEnabledValue = multiAzEnabled;
    if (multiAzEnabledValue != null) {
      map['multiAzEnabled'] = multiAzEnabledValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final nodeGroupConfigurationsValue = nodeGroupConfigurations;
    if (nodeGroupConfigurationsValue != null) {
      map['nodeGroupConfigurations'] = Input.mapOptionalInputValue<
              List<ReplicationGroupNodeGroupConfiguration>,
              List<Map<String, dynamic>>>(
          nodeGroupConfigurationsValue,
          (value) => Input.encodeList<ReplicationGroupNodeGroupConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final notificationTopicArnValue = notificationTopicArn;
    if (notificationTopicArnValue != null) {
      map['notificationTopicArn'] = notificationTopicArnValue;
    }
    final numCacheClustersValue = numCacheClusters;
    if (numCacheClustersValue != null) {
      map['numCacheClusters'] = numCacheClustersValue;
    }
    final numNodeGroupsValue = numNodeGroups;
    if (numNodeGroupsValue != null) {
      map['numNodeGroups'] = numNodeGroupsValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preferredCacheClusterAzsValue = preferredCacheClusterAzs;
    if (preferredCacheClusterAzsValue != null) {
      map['preferredCacheClusterAzs'] = preferredCacheClusterAzsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicasPerNodeGroupValue = replicasPerNodeGroup;
    if (replicasPerNodeGroupValue != null) {
      map['replicasPerNodeGroup'] = replicasPerNodeGroupValue;
    }
    final replicationGroupIdValue = replicationGroupId;
    if (replicationGroupIdValue != null) {
      map['replicationGroupId'] = replicationGroupIdValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final securityGroupNamesValue = securityGroupNames;
    if (securityGroupNamesValue != null) {
      map['securityGroupNames'] = securityGroupNamesValue;
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
    final subnetGroupNameValue = subnetGroupName;
    if (subnetGroupNameValue != null) {
      map['subnetGroupName'] = subnetGroupNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitEncryptionEnabledValue = transitEncryptionEnabled;
    if (transitEncryptionEnabledValue != null) {
      map['transitEncryptionEnabled'] = transitEncryptionEnabledValue;
    }
    final transitEncryptionModeValue = transitEncryptionMode;
    if (transitEncryptionModeValue != null) {
      map['transitEncryptionMode'] = transitEncryptionModeValue;
    }
    final userGroupIdsValue = userGroupIds;
    if (userGroupIdsValue != null) {
      map['userGroupIds'] = userGroupIdsValue;
    }
    return map;
  }

  factory ReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationGroupArgs(
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      atRestEncryptionEnabled:
          Input.asOptionalInput<bool>(map['atRestEncryptionEnabled']),
      authToken: Input.asOptionalInput<String>(map['authToken']),
      authTokenUpdateStrategy:
          Input.asOptionalInput<String>(map['authTokenUpdateStrategy']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      automaticFailoverEnabled:
          Input.asOptionalInput<bool>(map['automaticFailoverEnabled']),
      clusterMode: Input.asOptionalInput<String>(map['clusterMode']),
      dataTieringEnabled:
          Input.asOptionalInput<bool>(map['dataTieringEnabled']),
      description: Input.asInput<String>(map['description']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      globalReplicationGroupId:
          Input.asOptionalInput<String>(map['globalReplicationGroupId']),
      ipDiscovery: Input.asOptionalInput<String>(map['ipDiscovery']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      logDeliveryConfigurations:
          Input.asOptionalInput<List<ReplicationGroupLogDeliveryConfiguration>>(
              map['logDeliveryConfigurations']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      multiAzEnabled: Input.asOptionalInput<bool>(map['multiAzEnabled']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      nodeGroupConfigurations:
          Input.asOptionalInput<List<ReplicationGroupNodeGroupConfiguration>>(
              map['nodeGroupConfigurations']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      notificationTopicArn:
          Input.asOptionalInput<String>(map['notificationTopicArn']),
      numCacheClusters: Input.asOptionalInput<int>(map['numCacheClusters']),
      numNodeGroups: Input.asOptionalInput<int>(map['numNodeGroups']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredCacheClusterAzs:
          Input.asOptionalInput<List<String>>(map['preferredCacheClusterAzs']),
      region: Input.asOptionalInput<String>(map['region']),
      replicasPerNodeGroup:
          Input.asOptionalInput<int>(map['replicasPerNodeGroup']),
      replicationGroupId:
          Input.asOptionalInput<String>(map['replicationGroupId']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      securityGroupNames:
          Input.asOptionalInput<List<String>>(map['securityGroupNames']),
      snapshotArns: Input.asOptionalInput<List<String>>(map['snapshotArns']),
      snapshotName: Input.asOptionalInput<String>(map['snapshotName']),
      snapshotRetentionLimit:
          Input.asOptionalInput<int>(map['snapshotRetentionLimit']),
      snapshotWindow: Input.asOptionalInput<String>(map['snapshotWindow']),
      subnetGroupName: Input.asOptionalInput<String>(map['subnetGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitEncryptionEnabled:
          Input.asOptionalInput<bool>(map['transitEncryptionEnabled']),
      transitEncryptionMode:
          Input.asOptionalInput<String>(map['transitEncryptionMode']),
      userGroupIds: Input.asOptionalInput<List<String>>(map['userGroupIds']),
    );
  }
}
