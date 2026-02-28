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

  /// Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`.
  final pulumi.Input<String>? authToken;

  /// Strategy used when modifying `auth_token` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `auth_token` must be omitted.
  final pulumi.Input<String>? authTokenUpdateStrategy;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;

  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `num_cache_clusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  final pulumi.Input<bool>? automaticFailoverEnabled;

  /// Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  final pulumi.Input<String>? clusterMode;

  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  final pulumi.Input<bool>? dataTieringEnabled;

  /// User-created description for the replication group. Must not be empty.
  final pulumi.Input<String> description;

  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis`.
  final pulumi.Input<String>? engine;

  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  final pulumi.Input<String>? engineVersion;

  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `global_replication_group_id` is set, the `num_node_groups` parameter cannot be set.
  final pulumi.Input<String>? globalReplicationGroupId;

  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  final pulumi.Input<String>? ipDiscovery;

  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`.
  final pulumi.Input<String>? kmsKeyId;

  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  final pulumi.Input<List<ReplicationGroupLogDeliveryConfiguration>>?
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  final pulumi.Input<String>? maintenanceWindow;

  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If `true`, `automatic_failover_enabled` must also be enabled.
  /// Defaults to `false`.
  final pulumi.Input<bool>? multiAzEnabled;

  /// The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  final pulumi.Input<String>? networkType;

  /// Configuration block for node groups (shards). Can be specified only if `num_node_groups` is set. Conflicts with `preferred_cache_cluster_azs`. See Node Group Configuration below for more details.
  final pulumi.Input<List<ReplicationGroupNodeGroupConfiguration>>?
      nodeGroupConfigurations;

  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless `global_replication_group_id` is set.
  /// Cannot be set if `global_replication_group_id` is set.
  final pulumi.Input<String>? nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final pulumi.Input<String>? notificationTopicArn;

  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If `automatic_failover_enabled` or `multi_az_enabled` are `true`, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with `num_node_groups` and `replicas_per_node_group`.
  /// Defaults to `1`.
  final pulumi.Input<int>? numCacheClusters;

  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with `num_cache_clusters`.
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
  /// Valid values are 0 to 5.
  /// Conflicts with `num_cache_clusters`.
  /// Can only be set if `num_node_groups` is set.
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

  /// Name of a snapshot from which to restore data into the new node group. Changing the `snapshot_name` forces a new resource.
  final pulumi.Input<String>? snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshot_retention_limit` is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  final pulumi.Input<int>? snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  final pulumi.Input<String>? snapshotWindow;

  /// Name of the cache subnet group to be used for the replication group.
  final pulumi.Input<String>? subnetGroupName;

  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether to enable encryption in transit.
  /// Changing this argument with an `engine_version` < `7.0.5` will force a replacement.
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
  /// [authToken] Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`.
  /// [authTokenUpdateStrategy] Strategy used when modifying `auth_token` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `auth_token` must be omitted.
  /// [autoMinorVersionUpgrade] Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// [automaticFailoverEnabled] Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `num_cache_clusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  /// [clusterMode] Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  /// [dataTieringEnabled] Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  /// [description] User-created description for the replication group. Must not be empty.
  /// [engine] Name of the cache engine to be used for the clusters in this replication group.
  /// [engineVersion] Version number of the cache engine to be used for the cache clusters in this replication group.
  /// [finalSnapshotIdentifier] The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  /// [globalReplicationGroupId] The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `global_replication_group_id` is set, the `num_node_groups` parameter cannot be set.
  /// [ipDiscovery] The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  /// [kmsKeyId] The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`.
  /// [logDeliveryConfigurations] Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  /// [maintenanceWindow] Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  /// [multiAzEnabled] Specifies whether to enable Multi-AZ Support for the replication group.
  /// [networkType] The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  /// [nodeGroupConfigurations] Configuration block for node groups (shards). Can be specified only if `num_node_groups` is set. Conflicts with `preferred_cache_cluster_azs`. See Node Group Configuration below for more details.
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
  /// [snapshotName] Name of a snapshot from which to restore data into the new node group. Changing the `snapshot_name` forces a new resource.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshot_retention_limit` is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  /// [subnetGroupName] Name of the cache subnet group to be used for the replication group.
  /// [tags] Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitEncryptionEnabled] Whether to enable encryption in transit.
  /// [transitEncryptionMode] A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// [userGroupIds] User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  ReplicationGroupArgs({
    bool? applyImmediately,
    bool? atRestEncryptionEnabled,
    String? authToken,
    String? authTokenUpdateStrategy,
    bool? autoMinorVersionUpgrade,
    bool? automaticFailoverEnabled,
    String? clusterMode,
    bool? dataTieringEnabled,
    required String description,
    String? engine,
    String? engineVersion,
    String? finalSnapshotIdentifier,
    String? globalReplicationGroupId,
    String? ipDiscovery,
    String? kmsKeyId,
    List<ReplicationGroupLogDeliveryConfiguration>? logDeliveryConfigurations,
    String? maintenanceWindow,
    bool? multiAzEnabled,
    String? networkType,
    List<ReplicationGroupNodeGroupConfiguration>? nodeGroupConfigurations,
    String? nodeType,
    String? notificationTopicArn,
    int? numCacheClusters,
    int? numNodeGroups,
    String? parameterGroupName,
    int? port,
    List<String>? preferredCacheClusterAzs,
    String? region,
    int? replicasPerNodeGroup,
    String? replicationGroupId,
    List<String>? securityGroupIds,
    List<String>? securityGroupNames,
    List<String>? snapshotArns,
    String? snapshotName,
    int? snapshotRetentionLimit,
    String? snapshotWindow,
    String? subnetGroupName,
    Map<String, String>? tags,
    bool? transitEncryptionEnabled,
    String? transitEncryptionMode,
    List<String>? userGroupIds,
  })  : applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
        atRestEncryptionEnabled =
            pulumi.Input.asOptionalInput<bool>(atRestEncryptionEnabled),
        authToken = pulumi.Input.asOptionalInput<String>(authToken),
        authTokenUpdateStrategy =
            pulumi.Input.asOptionalInput<String>(authTokenUpdateStrategy),
        autoMinorVersionUpgrade =
            pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
        automaticFailoverEnabled =
            pulumi.Input.asOptionalInput<bool>(automaticFailoverEnabled),
        clusterMode = pulumi.Input.asOptionalInput<String>(clusterMode),
        dataTieringEnabled =
            pulumi.Input.asOptionalInput<bool>(dataTieringEnabled),
        description = pulumi.Input.asInput<String>(description),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        finalSnapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
        globalReplicationGroupId =
            pulumi.Input.asOptionalInput<String>(globalReplicationGroupId),
        ipDiscovery = pulumi.Input.asOptionalInput<String>(ipDiscovery),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        logDeliveryConfigurations = pulumi.Input.asOptionalInput<
                List<ReplicationGroupLogDeliveryConfiguration>>(
            logDeliveryConfigurations),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<String>(maintenanceWindow),
        multiAzEnabled = pulumi.Input.asOptionalInput<bool>(multiAzEnabled),
        networkType = pulumi.Input.asOptionalInput<String>(networkType),
        nodeGroupConfigurations = pulumi.Input.asOptionalInput<
                List<ReplicationGroupNodeGroupConfiguration>>(
            nodeGroupConfigurations),
        nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
        notificationTopicArn =
            pulumi.Input.asOptionalInput<String>(notificationTopicArn),
        numCacheClusters = pulumi.Input.asOptionalInput<int>(numCacheClusters),
        numNodeGroups = pulumi.Input.asOptionalInput<int>(numNodeGroups),
        parameterGroupName =
            pulumi.Input.asOptionalInput<String>(parameterGroupName),
        port = pulumi.Input.asOptionalInput<int>(port),
        preferredCacheClusterAzs = pulumi.Input.asOptionalInput<List<String>>(
            preferredCacheClusterAzs),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicasPerNodeGroup =
            pulumi.Input.asOptionalInput<int>(replicasPerNodeGroup),
        replicationGroupId =
            pulumi.Input.asOptionalInput<String>(replicationGroupId),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        securityGroupNames =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupNames),
        snapshotArns = pulumi.Input.asOptionalInput<List<String>>(snapshotArns),
        snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
        snapshotRetentionLimit =
            pulumi.Input.asOptionalInput<int>(snapshotRetentionLimit),
        snapshotWindow = pulumi.Input.asOptionalInput<String>(snapshotWindow),
        subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitEncryptionEnabled =
            pulumi.Input.asOptionalInput<bool>(transitEncryptionEnabled),
        transitEncryptionMode =
            pulumi.Input.asOptionalInput<String>(transitEncryptionMode),
        userGroupIds = pulumi.Input.asOptionalInput<List<String>>(userGroupIds);

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
      map['logDeliveryConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ReplicationGroupLogDeliveryConfiguration>,
              List<Map<String, dynamic>>>(
          logDeliveryConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              ReplicationGroupLogDeliveryConfiguration,
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
      map['nodeGroupConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ReplicationGroupNodeGroupConfiguration>,
              List<Map<String, dynamic>>>(
          nodeGroupConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              ReplicationGroupNodeGroupConfiguration,
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
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      atRestEncryptionEnabled: map['atRestEncryptionEnabled'] == null
          ? null
          : map['atRestEncryptionEnabled'] as bool,
      authToken: map['authToken'] == null ? null : map['authToken'] as String,
      authTokenUpdateStrategy: map['authTokenUpdateStrategy'] == null
          ? null
          : map['authTokenUpdateStrategy'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null
          ? null
          : map['autoMinorVersionUpgrade'] as bool,
      automaticFailoverEnabled: map['automaticFailoverEnabled'] == null
          ? null
          : map['automaticFailoverEnabled'] as bool,
      clusterMode:
          map['clusterMode'] == null ? null : map['clusterMode'] as String,
      dataTieringEnabled: map['dataTieringEnabled'] == null
          ? null
          : map['dataTieringEnabled'] as bool,
      description: map['description'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null
          ? null
          : map['finalSnapshotIdentifier'] as String,
      globalReplicationGroupId: map['globalReplicationGroupId'] == null
          ? null
          : map['globalReplicationGroupId'] as String,
      ipDiscovery:
          map['ipDiscovery'] == null ? null : map['ipDiscovery'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      logDeliveryConfigurations: map['logDeliveryConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<ReplicationGroupLogDeliveryConfiguration>(
              map['logDeliveryConfigurations'],
              (value) => ReplicationGroupLogDeliveryConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      multiAzEnabled:
          map['multiAzEnabled'] == null ? null : map['multiAzEnabled'] as bool,
      networkType:
          map['networkType'] == null ? null : map['networkType'] as String,
      nodeGroupConfigurations: map['nodeGroupConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<ReplicationGroupNodeGroupConfiguration>(
              map['nodeGroupConfigurations'],
              (value) => ReplicationGroupNodeGroupConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      notificationTopicArn: map['notificationTopicArn'] == null
          ? null
          : map['notificationTopicArn'] as String,
      numCacheClusters: map['numCacheClusters'] == null
          ? null
          : map['numCacheClusters'] as int,
      numNodeGroups:
          map['numNodeGroups'] == null ? null : map['numNodeGroups'] as int,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredCacheClusterAzs: map['preferredCacheClusterAzs'] == null
          ? null
          : (map['preferredCacheClusterAzs'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      replicasPerNodeGroup: map['replicasPerNodeGroup'] == null
          ? null
          : map['replicasPerNodeGroup'] as int,
      replicationGroupId: map['replicationGroupId'] == null
          ? null
          : map['replicationGroupId'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      securityGroupNames: map['securityGroupNames'] == null
          ? null
          : (map['securityGroupNames'] as List).cast<String>(),
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
      subnetGroupName: map['subnetGroupName'] == null
          ? null
          : map['subnetGroupName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitEncryptionEnabled: map['transitEncryptionEnabled'] == null
          ? null
          : map['transitEncryptionEnabled'] as bool,
      transitEncryptionMode: map['transitEncryptionMode'] == null
          ? null
          : map['transitEncryptionMode'] as String,
      userGroupIds: map['userGroupIds'] == null
          ? null
          : (map['userGroupIds'] as List).cast<String>(),
    );
  }
}
