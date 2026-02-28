// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_log_delivery_configuration.dart';

/// {@template pulumi_elasticache_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_elasticache_cluster_cluster_args_doc}
class ClusterArgs {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  final pulumi.Input<bool>? applyImmediately;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine type `"redis"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  final pulumi.Input<String>? autoMinorVersionUpgrade;

  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  final pulumi.Input<String>? availabilityZone;

  /// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `num_cache_nodes` must be greater than `1`.
  final pulumi.Input<String>? azMode;

  /// Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  final pulumi.Input<String>? clusterId;

  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` and `valkey`.
  final pulumi.Input<String>? engine;

  /// Version number of the cache engine to be used.
  /// If not set, defaults to the latest version.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  /// When `engine` is `redis` and the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. Cannot be provided with `replication_group_id.`
  final pulumi.Input<String>? engineVersion;

  /// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  final pulumi.Input<String>? finalSnapshotIdentifier;

  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  final pulumi.Input<String>? ipDiscovery;

  /// Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  final pulumi.Input<List<ClusterLogDeliveryConfiguration>>?
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC).
  /// The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`.
  final pulumi.Input<String>? maintenanceWindow;

  /// The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  final pulumi.Input<String>? networkType;

  /// The instance class used.
  /// See AWS documentation for information on [supported node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen) and [guidance on selecting node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.redis).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen-Memcached) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.Mem).
  /// For Memcached, changing this value will re-create the resource.
  final pulumi.Input<String>? nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  final pulumi.Input<String>? notificationTopicArn;

  /// The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  final pulumi.Input<int>? numCacheNodes;

  /// Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  final pulumi.Input<String>? outpostMode;

  /// The name of the parameter group to associate with this cache cluster.
  final pulumi.Input<String>? parameterGroupName;

  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  final pulumi.Input<int>? port;

  /// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `num_cache_nodes`. If you want all the nodes in the same Availability Zone, use `availability_zone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  final pulumi.Input<List<String>>? preferredAvailabilityZones;

  /// The outpost ARN in which the cache cluster will be created.
  final pulumi.Input<String>? preferredOutpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  final pulumi.Input<String>? replicationGroupId;

  /// One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  final pulumi.Input<List<String>>? securityGroupIds;

  /// Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshot_arns` forces a new resource.
  final pulumi.Input<String>? snapshotArns;

  /// Name of a snapshot from which to restore data into the new node group. Changing `snapshot_name` forces a new resource.
  final pulumi.Input<String>? snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  final pulumi.Input<int>? snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  final pulumi.Input<String>? snapshotWindow;

  /// Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  final pulumi.Input<String>? subnetGroupName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Enable encryption in-transit. Supported with Memcached versions `1.6.12` and later, Valkey `7.2` and later, Redis OSS versions `3.2.6`, `4.0.10` and later, running in a VPC. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  final pulumi.Input<bool>? transitEncryptionEnabled;

  /// Creates a new [ClusterArgs].
  /// [applyImmediately] Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  /// [autoMinorVersionUpgrade] Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// [availabilityZone] Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  /// [azMode] Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `num_cache_nodes` must be greater than `1`.
  /// [clusterId] Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  /// [engine] Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` and `valkey`.
  /// [engineVersion] Version number of the cache engine to be used.
  /// [finalSnapshotIdentifier] Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  /// [ipDiscovery] The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  /// [logDeliveryConfigurations] Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  /// [maintenanceWindow] Specifies the weekly time range for when maintenance
  /// [networkType] The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  /// [nodeType] The instance class used.
  /// [notificationTopicArn] ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  /// [numCacheNodes] The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  /// [outpostMode] Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  /// [parameterGroupName] The name of the parameter group to associate with this cache cluster.
  /// [port] The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  /// [preferredAvailabilityZones] List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `num_cache_nodes`. If you want all the nodes in the same Availability Zone, use `availability_zone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  /// [preferredOutpostArn] The outpost ARN in which the cache cluster will be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationGroupId] ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  /// [securityGroupIds] One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  /// [snapshotArns] Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshot_arns` forces a new resource.
  /// [snapshotName] Name of a snapshot from which to restore data into the new node group. Changing `snapshot_name` forces a new resource.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  /// [subnetGroupName] Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitEncryptionEnabled] Enable encryption in-transit. Supported with Memcached versions `1.6.12` and later, Valkey `7.2` and later, Redis OSS versions `3.2.6`, `4.0.10` and later, running in a VPC. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  ClusterArgs({
    bool? applyImmediately,
    String? autoMinorVersionUpgrade,
    String? availabilityZone,
    String? azMode,
    String? clusterId,
    String? engine,
    String? engineVersion,
    String? finalSnapshotIdentifier,
    String? ipDiscovery,
    List<ClusterLogDeliveryConfiguration>? logDeliveryConfigurations,
    String? maintenanceWindow,
    String? networkType,
    String? nodeType,
    String? notificationTopicArn,
    int? numCacheNodes,
    String? outpostMode,
    String? parameterGroupName,
    int? port,
    List<String>? preferredAvailabilityZones,
    String? preferredOutpostArn,
    String? region,
    String? replicationGroupId,
    List<String>? securityGroupIds,
    String? snapshotArns,
    String? snapshotName,
    int? snapshotRetentionLimit,
    String? snapshotWindow,
    String? subnetGroupName,
    Map<String, String>? tags,
    bool? transitEncryptionEnabled,
  })  : applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
        autoMinorVersionUpgrade =
            pulumi.Input.asOptionalInput<String>(autoMinorVersionUpgrade),
        availabilityZone =
            pulumi.Input.asOptionalInput<String>(availabilityZone),
        azMode = pulumi.Input.asOptionalInput<String>(azMode),
        clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        finalSnapshotIdentifier =
            pulumi.Input.asOptionalInput<String>(finalSnapshotIdentifier),
        ipDiscovery = pulumi.Input.asOptionalInput<String>(ipDiscovery),
        logDeliveryConfigurations =
            pulumi.Input.asOptionalInput<List<ClusterLogDeliveryConfiguration>>(
                logDeliveryConfigurations),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<String>(maintenanceWindow),
        networkType = pulumi.Input.asOptionalInput<String>(networkType),
        nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
        notificationTopicArn =
            pulumi.Input.asOptionalInput<String>(notificationTopicArn),
        numCacheNodes = pulumi.Input.asOptionalInput<int>(numCacheNodes),
        outpostMode = pulumi.Input.asOptionalInput<String>(outpostMode),
        parameterGroupName =
            pulumi.Input.asOptionalInput<String>(parameterGroupName),
        port = pulumi.Input.asOptionalInput<int>(port),
        preferredAvailabilityZones = pulumi.Input.asOptionalInput<List<String>>(
            preferredAvailabilityZones),
        preferredOutpostArn =
            pulumi.Input.asOptionalInput<String>(preferredOutpostArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        replicationGroupId =
            pulumi.Input.asOptionalInput<String>(replicationGroupId),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        snapshotArns = pulumi.Input.asOptionalInput<String>(snapshotArns),
        snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
        snapshotRetentionLimit =
            pulumi.Input.asOptionalInput<int>(snapshotRetentionLimit),
        snapshotWindow = pulumi.Input.asOptionalInput<String>(snapshotWindow),
        subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        transitEncryptionEnabled =
            pulumi.Input.asOptionalInput<bool>(transitEncryptionEnabled);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final azModeValue = azMode;
    if (azModeValue != null) {
      map['azMode'] = azModeValue;
    }
    final clusterIdValue = clusterId;
    if (clusterIdValue != null) {
      map['clusterId'] = clusterIdValue;
    }
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
    final ipDiscoveryValue = ipDiscovery;
    if (ipDiscoveryValue != null) {
      map['ipDiscovery'] = ipDiscoveryValue;
    }
    final logDeliveryConfigurationsValue = logDeliveryConfigurations;
    if (logDeliveryConfigurationsValue != null) {
      map['logDeliveryConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterLogDeliveryConfiguration>,
              List<Map<String, dynamic>>>(
          logDeliveryConfigurationsValue,
          (value) => pulumi.Input.encodeList<ClusterLogDeliveryConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    final networkTypeValue = networkType;
    if (networkTypeValue != null) {
      map['networkType'] = networkTypeValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final notificationTopicArnValue = notificationTopicArn;
    if (notificationTopicArnValue != null) {
      map['notificationTopicArn'] = notificationTopicArnValue;
    }
    final numCacheNodesValue = numCacheNodes;
    if (numCacheNodesValue != null) {
      map['numCacheNodes'] = numCacheNodesValue;
    }
    final outpostModeValue = outpostMode;
    if (outpostModeValue != null) {
      map['outpostMode'] = outpostModeValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final preferredAvailabilityZonesValue = preferredAvailabilityZones;
    if (preferredAvailabilityZonesValue != null) {
      map['preferredAvailabilityZones'] = preferredAvailabilityZonesValue;
    }
    final preferredOutpostArnValue = preferredOutpostArn;
    if (preferredOutpostArnValue != null) {
      map['preferredOutpostArn'] = preferredOutpostArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicationGroupIdValue = replicationGroupId;
    if (replicationGroupIdValue != null) {
      map['replicationGroupId'] = replicationGroupIdValue;
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
    return map;
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      applyImmediately: map['applyImmediately'] == null
          ? null
          : map['applyImmediately'] as bool,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null
          ? null
          : map['autoMinorVersionUpgrade'] as String,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      azMode: map['azMode'] == null ? null : map['azMode'] as String,
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      finalSnapshotIdentifier: map['finalSnapshotIdentifier'] == null
          ? null
          : map['finalSnapshotIdentifier'] as String,
      ipDiscovery:
          map['ipDiscovery'] == null ? null : map['ipDiscovery'] as String,
      logDeliveryConfigurations: map['logDeliveryConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<ClusterLogDeliveryConfiguration>(
              map['logDeliveryConfigurations'],
              (value) => ClusterLogDeliveryConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      networkType:
          map['networkType'] == null ? null : map['networkType'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      notificationTopicArn: map['notificationTopicArn'] == null
          ? null
          : map['notificationTopicArn'] as String,
      numCacheNodes:
          map['numCacheNodes'] == null ? null : map['numCacheNodes'] as int,
      outpostMode:
          map['outpostMode'] == null ? null : map['outpostMode'] as String,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredAvailabilityZones: map['preferredAvailabilityZones'] == null
          ? null
          : (map['preferredAvailabilityZones'] as List).cast<String>(),
      preferredOutpostArn: map['preferredOutpostArn'] == null
          ? null
          : map['preferredOutpostArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationGroupId: map['replicationGroupId'] == null
          ? null
          : map['replicationGroupId'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      snapshotArns:
          map['snapshotArns'] == null ? null : map['snapshotArns'] as String,
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
    );
  }
}
