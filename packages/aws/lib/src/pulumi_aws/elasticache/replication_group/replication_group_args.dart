// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replication_group_log_delivery_configuration/replication_group_log_delivery_configuration.dart';
import '../replication_group_node_group_configuration/replication_group_node_group_configuration.dart';

/// The set of arguments for ReplicationGroup.
class ReplicationGroupArgs {
  /// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`.
  final Input<bool>? applyImmediately;

  /// Whether to enable encryption at rest.
  /// When `engine` is `redis`, default is `false`.
  /// When `engine` is `valkey`, default is `true`.
  final Input<bool>? atRestEncryptionEnabled;

  /// Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`.
  final Input<String>? authToken;

  /// Strategy used when modifying `auth_token` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `auth_token` must be omitted.
  final Input<String>? authTokenUpdateStrategy;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  final Input<bool>? autoMinorVersionUpgrade;

  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `num_cache_clusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  final Input<bool>? automaticFailoverEnabled;

  /// Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  final Input<String>? clusterMode;

  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  final Input<bool>? dataTieringEnabled;

  /// User-created description for the replication group. Must not be empty.
  final Input<String> description;

  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis`.
  final Input<String>? engine;

  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  final Input<String>? engineVersion;

  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotIdentifier;

  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `global_replication_group_id` is set, the `num_node_groups` parameter cannot be set.
  final Input<String>? globalReplicationGroupId;

  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  final Input<String>? ipDiscovery;

  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`.
  final Input<String>? kmsKeyId;

  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  final Input<List<ReplicationGroupLogDeliveryConfiguration>>?
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  final Input<String>? maintenanceWindow;

  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If `true`, `automatic_failover_enabled` must also be enabled.
  /// Defaults to `false`.
  final Input<bool>? multiAzEnabled;

  /// The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  final Input<String>? networkType;

  /// Configuration block for node groups (shards). Can be specified only if `num_node_groups` is set. Conflicts with `preferred_cache_cluster_azs`. See Node Group Configuration below for more details.
  final Input<List<ReplicationGroupNodeGroupConfiguration>>?
      nodeGroupConfigurations;

  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless `global_replication_group_id` is set.
  /// Cannot be set if `global_replication_group_id` is set.
  final Input<String>? nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final Input<String>? notificationTopicArn;

  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If `automatic_failover_enabled` or `multi_az_enabled` are `true`, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with `num_node_groups` and `replicas_per_node_group`.
  /// Defaults to `1`.
  final Input<int>? numCacheClusters;

  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with `num_cache_clusters`.
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
  /// Conflicts with `num_cache_clusters`.
  /// Can only be set if `num_node_groups` is set.
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

  /// Name of a snapshot from which to restore data into the new node group. Changing the `snapshot_name` forces a new resource.
  final Input<String>? snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshot_retention_limit` is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  final Input<int>? snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  final Input<String>? snapshotWindow;

  /// Name of the cache subnet group to be used for the replication group.
  final Input<String>? subnetGroupName;

  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Whether to enable encryption in transit.
  /// Changing this argument with an `engine_version` < `7.0.5` will force a replacement.
  /// Engine versions prior to `7.0.5` only allow this transit encryption to be configured during creation of the replication group.
  final Input<bool>? transitEncryptionEnabled;

  /// A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// Valid values are `preferred` and `required`.
  /// When enabling encryption on an existing replication group, this must first be set to `preferred` before setting it to `required` in a subsequent apply.
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
