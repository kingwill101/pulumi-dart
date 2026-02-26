// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_log_delivery_configuration/cluster_log_delivery_configuration.dart';

/// The set of arguments for Cluster.
class ClusterArgs7 {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  final Input<bool>? applyImmediately;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine type `"redis"` and if the engine version is 6 or higher.
  /// Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<String>? autoMinorVersionUpgrade;

  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use <span pulumi-lang-nodejs="`preferredAvailabilityZones`" pulumi-lang-dotnet="`PreferredAvailabilityZones`" pulumi-lang-go="`preferredAvailabilityZones`" pulumi-lang-python="`preferred_availability_zones`" pulumi-lang-yaml="`preferredAvailabilityZones`" pulumi-lang-java="`preferredAvailabilityZones`">`preferred_availability_zones`</span> instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  final Input<String>? availabilityZone;

  /// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, <span pulumi-lang-nodejs="`numCacheNodes`" pulumi-lang-dotnet="`NumCacheNodes`" pulumi-lang-go="`numCacheNodes`" pulumi-lang-python="`num_cache_nodes`" pulumi-lang-yaml="`numCacheNodes`" pulumi-lang-java="`numCacheNodes`">`num_cache_nodes`</span> must be greater than <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  final Input<String>? azMode;

  /// Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  final Input<String>? clusterId;

  /// Name of the cache engine to be used for this cache cluster. Valid values are <span pulumi-lang-nodejs="`memcached`" pulumi-lang-dotnet="`Memcached`" pulumi-lang-go="`memcached`" pulumi-lang-python="`memcached`" pulumi-lang-yaml="`memcached`" pulumi-lang-java="`memcached`">`memcached`</span>, <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> and <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>.
  final Input<String>? engine;

  /// Version number of the cache engine to be used.
  /// If not set, defaults to the latest version.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  /// When <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> is <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> and the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below. Cannot be provided with `replication_group_id.`
  final Input<String>? engineVersion;

  /// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  final Input<String>? finalSnapshotIdentifier;

  /// The IP version to advertise in the discovery protocol. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span> or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final Input<String>? ipDiscovery;

  /// Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  final Input<List<ClusterLogDeliveryConfiguration>>? logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC).
  /// The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`.
  final Input<String>? maintenanceWindow;

  /// The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span> or <span pulumi-lang-nodejs="`dualStack`" pulumi-lang-dotnet="`DualStack`" pulumi-lang-go="`dualStack`" pulumi-lang-python="`dual_stack`" pulumi-lang-yaml="`dualStack`" pulumi-lang-java="`dualStack`">`dual_stack`</span>.
  final Input<String>? networkType;

  /// The instance class used.
  /// See AWS documentation for information on [supported node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen) and [guidance on selecting node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.redis).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen-Memcached) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.Mem).
  /// For Memcached, changing this value will re-create the resource.
  final Input<String>? nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  final Input<String>? notificationTopicArn;

  /// The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  final Input<int>? numCacheNodes;

  /// Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  final Input<String>? outpostMode;

  /// The name of the parameter group to associate with this cache cluster.
  final Input<String>? parameterGroupName;

  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with <span pulumi-lang-nodejs="`replicationGroupId`" pulumi-lang-dotnet="`ReplicationGroupId`" pulumi-lang-go="`replicationGroupId`" pulumi-lang-python="`replication_group_id`" pulumi-lang-yaml="`replicationGroupId`" pulumi-lang-java="`replicationGroupId`">`replication_group_id`</span>. Changing this value will re-create the resource.
  final Input<int>? port;

  /// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of <span pulumi-lang-nodejs="`numCacheNodes`" pulumi-lang-dotnet="`NumCacheNodes`" pulumi-lang-go="`numCacheNodes`" pulumi-lang-python="`num_cache_nodes`" pulumi-lang-yaml="`numCacheNodes`" pulumi-lang-java="`numCacheNodes`">`num_cache_nodes`</span>. If you want all the nodes in the same Availability Zone, use <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  final Input<List<String>>? preferredAvailabilityZones;

  /// The outpost ARN in which the cache cluster will be created.
  final Input<String>? preferredOutpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  final Input<String>? replicationGroupId;

  /// One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  final Input<List<String>>? securityGroupIds;

  /// Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing <span pulumi-lang-nodejs="`snapshotArns`" pulumi-lang-dotnet="`SnapshotArns`" pulumi-lang-go="`snapshotArns`" pulumi-lang-python="`snapshot_arns`" pulumi-lang-yaml="`snapshotArns`" pulumi-lang-java="`snapshotArns`">`snapshot_arns`</span> forces a new resource.
  final Input<String>? snapshotArns;

  /// Name of a snapshot from which to restore data into the new node group. Changing <span pulumi-lang-nodejs="`snapshotName`" pulumi-lang-dotnet="`SnapshotName`" pulumi-lang-go="`snapshotName`" pulumi-lang-python="`snapshot_name`" pulumi-lang-yaml="`snapshotName`" pulumi-lang-java="`snapshotName`">`snapshot_name`</span> forces a new resource.
  final Input<String>? snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a <span pulumi-lang-nodejs="`snapshotRetentionLimit`" pulumi-lang-dotnet="`SnapshotRetentionLimit`" pulumi-lang-go="`snapshotRetentionLimit`" pulumi-lang-python="`snapshot_retention_limit`" pulumi-lang-yaml="`snapshotRetentionLimit`" pulumi-lang-java="`snapshotRetentionLimit`">`snapshot_retention_limit`</span> is not supported on cache.t1.micro cache nodes
  final Input<int>? snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  final Input<String>? snapshotWindow;

  /// Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  final Input<String>? subnetGroupName;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Enable encryption in-transit. Supported with Memcached versions `1.6.12` and later, Valkey `7.2` and later, Redis OSS versions `3.2.6`, `4.0.10` and later, running in a VPC. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  final Input<bool>? transitEncryptionEnabled;

  ClusterArgs7({
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.azMode,
    this.clusterId,
    this.engine,
    this.engineVersion,
    this.finalSnapshotIdentifier,
    this.ipDiscovery,
    this.logDeliveryConfigurations,
    this.maintenanceWindow,
    this.networkType,
    this.nodeType,
    this.notificationTopicArn,
    this.numCacheNodes,
    this.outpostMode,
    this.parameterGroupName,
    this.port,
    this.preferredAvailabilityZones,
    this.preferredOutpostArn,
    this.region,
    this.replicationGroupId,
    this.securityGroupIds,
    this.snapshotArns,
    this.snapshotName,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.subnetGroupName,
    this.tags,
    this.transitEncryptionEnabled,
  });

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
      map['logDeliveryConfigurations'] = Input.mapOptionalInputValue<
              List<ClusterLogDeliveryConfiguration>,
              List<Map<String, dynamic>>>(
          logDeliveryConfigurationsValue,
          (value) => Input.encodeList<ClusterLogDeliveryConfiguration,
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

  factory ClusterArgs7.fromMap(Map<String, dynamic> map) {
    return ClusterArgs7(
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<String>(map['autoMinorVersionUpgrade']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      azMode: Input.asOptionalInput<String>(map['azMode']),
      clusterId: Input.asOptionalInput<String>(map['clusterId']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      finalSnapshotIdentifier:
          Input.asOptionalInput<String>(map['finalSnapshotIdentifier']),
      ipDiscovery: Input.asOptionalInput<String>(map['ipDiscovery']),
      logDeliveryConfigurations:
          Input.asOptionalInput<List<ClusterLogDeliveryConfiguration>>(
              map['logDeliveryConfigurations']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      networkType: Input.asOptionalInput<String>(map['networkType']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      notificationTopicArn:
          Input.asOptionalInput<String>(map['notificationTopicArn']),
      numCacheNodes: Input.asOptionalInput<int>(map['numCacheNodes']),
      outpostMode: Input.asOptionalInput<String>(map['outpostMode']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      port: Input.asOptionalInput<int>(map['port']),
      preferredAvailabilityZones: Input.asOptionalInput<List<String>>(
          map['preferredAvailabilityZones']),
      preferredOutpostArn:
          Input.asOptionalInput<String>(map['preferredOutpostArn']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationGroupId:
          Input.asOptionalInput<String>(map['replicationGroupId']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      snapshotArns: Input.asOptionalInput<String>(map['snapshotArns']),
      snapshotName: Input.asOptionalInput<String>(map['snapshotName']),
      snapshotRetentionLimit:
          Input.asOptionalInput<int>(map['snapshotRetentionLimit']),
      snapshotWindow: Input.asOptionalInput<String>(map['snapshotWindow']),
      subnetGroupName: Input.asOptionalInput<String>(map['subnetGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitEncryptionEnabled:
          Input.asOptionalInput<bool>(map['transitEncryptionEnabled']),
    );
  }
}
