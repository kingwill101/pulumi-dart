// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cache_node.dart';
import 'cluster_log_delivery_configuration.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  final pulumi.Input<bool?>? applyImmediately;
  /// The ARN of the created ElastiCache Cluster.
  final pulumi.Input<String?>? arn;
  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine type `"redis"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  final pulumi.Input<String?>? autoMinorVersionUpgrade;
  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferredAvailabilityZones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  final pulumi.Input<String?>? availabilityZone;
  /// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `numCacheNodes` must be greater than `1`.
  final pulumi.Input<String?>? azMode;
  /// List of node objects including `id`, `address`, `port` and `availabilityZone`.
  final pulumi.Input<List<ClusterCacheNode>?>? cacheNodes;
  /// (Memcached only) DNS name of the cache cluster without the port appended.
  final pulumi.Input<String?>? clusterAddress;
  /// Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  final pulumi.Input<String?>? clusterId;
  /// (Memcached only) Configuration endpoint to allow host discovery.
  final pulumi.Input<String?>? configurationEndpoint;
  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis`.
  final pulumi.Input<String?>? engine;
  /// Version number of the cache engine to be used.
  /// If not set, defaults to the latest version.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  /// When `engine` is `redis` and the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below. Cannot be provided with `replication_group_id.`
  final pulumi.Input<String?>? engineVersion;
  /// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  final pulumi.Input<String?>? engineVersionActual;
  /// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  final pulumi.Input<String?>? finalSnapshotIdentifier;
  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  final pulumi.Input<String?>? ipDiscovery;
  /// Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  final pulumi.Input<List<ClusterLogDeliveryConfiguration>?>? logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC).
  /// The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`.
  final pulumi.Input<String?>? maintenanceWindow;
  /// The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dualStack`.
  final pulumi.Input<String?>? networkType;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types for Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen) and [guidance on selecting node types for Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.redis).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen-Memcached) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.Mem).
  /// For Memcached, changing this value will re-create the resource.
  final pulumi.Input<String?>? nodeType;
  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  final pulumi.Input<String?>? notificationTopicArn;
  /// The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  final pulumi.Input<int?>? numCacheNodes;
  /// Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  final pulumi.Input<String?>? outpostMode;
  /// The name of the parameter group to associate with this cache cluster.
  final pulumi.Input<String?>? parameterGroupName;
  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replicationGroupId`. Changing this value will re-create the resource.
  final pulumi.Input<int?>? port;
  /// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `numCacheNodes`. If you want all the nodes in the same Availability Zone, use `availabilityZone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  final pulumi.Input<List<String>?>? preferredAvailabilityZones;
  /// The outpost ARN in which the cache cluster will be created.
  final pulumi.Input<String?>? preferredOutpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  final pulumi.Input<String?>? replicationGroupId;
  /// One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Single-element string list containing an ARN of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshotArns` forces a new resource.
  final pulumi.Input<String?>? snapshotArns;
  /// Name of a snapshot from which to restore data into the new node group. Changing `snapshotName` forces a new resource.
  final pulumi.Input<String?>? snapshotName;
  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshotRetentionLimit` is not supported on cache.t1.micro cache nodes
  final pulumi.Input<int?>? snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  final pulumi.Input<String?>? snapshotWindow;
  /// Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  final pulumi.Input<String?>? subnetGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Enable encryption in-transit. Supported only with Memcached versions `1.6.12` and later, running in a VPC. For Redis or Valkey transit encryption, use `aws.elasticache.ReplicationGroup` instead. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  final pulumi.Input<bool?>? transitEncryptionEnabled;

  /// Creates a new [ClusterState].
  /// [applyImmediately] Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  /// [arn] The ARN of the created ElastiCache Cluster.
  /// [autoMinorVersionUpgrade] Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// [availabilityZone] Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferredAvailabilityZones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  /// [azMode] Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `numCacheNodes` must be greater than `1`.
  /// [cacheNodes] List of node objects including `id`, `address`, `port` and `availabilityZone`.
  /// [clusterAddress] (Memcached only) DNS name of the cache cluster without the port appended.
  /// [clusterId] Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  /// [configurationEndpoint] (Memcached only) Configuration endpoint to allow host discovery.
  /// [engine] Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis`.
  /// [engineVersion] Version number of the cache engine to be used.
  /// [engineVersionActual] Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  /// [finalSnapshotIdentifier] Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  /// [ipDiscovery] The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  /// [logDeliveryConfigurations] Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  /// [maintenanceWindow] Specifies the weekly time range for when maintenance
  /// [networkType] The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dualStack`.
  /// [nodeType] The instance class used.
  /// [notificationTopicArn] ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  /// [numCacheNodes] The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  /// [outpostMode] Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  /// [parameterGroupName] The name of the parameter group to associate with this cache cluster.
  /// [port] The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replicationGroupId`. Changing this value will re-create the resource.
  /// [preferredAvailabilityZones] List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `numCacheNodes`. If you want all the nodes in the same Availability Zone, use `availabilityZone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  /// [preferredOutpostArn] The outpost ARN in which the cache cluster will be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationGroupId] ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  /// [securityGroupIds] One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  /// [snapshotArns] Single-element string list containing an ARN of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshotArns` forces a new resource.
  /// [snapshotName] Name of a snapshot from which to restore data into the new node group. Changing `snapshotName` forces a new resource.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshotRetentionLimit` is not supported on cache.t1.micro cache nodes
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  /// [subnetGroupName] Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [transitEncryptionEnabled] Enable encryption in-transit. Supported only with Memcached versions `1.6.12` and later, running in a VPC. For Redis or Valkey transit encryption, use `aws.elasticache.ReplicationGroup` instead. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  const ClusterState({
    this.applyImmediately,
    this.arn,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.azMode,
    this.cacheNodes,
    this.clusterAddress,
    this.clusterId,
    this.configurationEndpoint,
    this.engine,
    this.engineVersion,
    this.engineVersionActual,
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
    this.tagsAll,
    this.transitEncryptionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'azMode': ?azMode,
      'cacheNodes': ?pulumi.Input.mapOptionalInputValue<List<ClusterCacheNode>, List<Map<String, dynamic>>>(cacheNodes, (value) => pulumi.Input.encodeList<ClusterCacheNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterAddress': ?clusterAddress,
      'clusterId': ?clusterId,
      'configurationEndpoint': ?configurationEndpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'engineVersionActual': ?engineVersionActual,
      'finalSnapshotIdentifier': ?finalSnapshotIdentifier,
      'ipDiscovery': ?ipDiscovery,
      'logDeliveryConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ClusterLogDeliveryConfiguration>, List<Map<String, dynamic>>>(logDeliveryConfigurations, (value) => pulumi.Input.encodeList<ClusterLogDeliveryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenanceWindow': ?maintenanceWindow,
      'networkType': ?networkType,
      'nodeType': ?nodeType,
      'notificationTopicArn': ?notificationTopicArn,
      'numCacheNodes': ?numCacheNodes,
      'outpostMode': ?outpostMode,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'preferredAvailabilityZones': ?preferredAvailabilityZones,
      'preferredOutpostArn': ?preferredOutpostArn,
      'region': ?region,
      'replicationGroupId': ?replicationGroupId,
      'securityGroupIds': ?securityGroupIds,
      'snapshotArns': ?snapshotArns,
      'snapshotName': ?snapshotName,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitEncryptionEnabled': ?transitEncryptionEnabled,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azMode: (() { final guardedValue = map['azMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheNodes: (() { final guardedValue = map['cacheNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCacheNode>(guardedValue, (value) => ClusterCacheNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterAddress: (() { final guardedValue = map['clusterAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationEndpoint: (() { final guardedValue = map['configurationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersionActual: (() { final guardedValue = map['engineVersionActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalSnapshotIdentifier: (() { final guardedValue = map['finalSnapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipDiscovery: (() { final guardedValue = map['ipDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDeliveryConfigurations: (() { final guardedValue = map['logDeliveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterLogDeliveryConfiguration>(guardedValue, (value) => ClusterLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationTopicArn: (() { final guardedValue = map['notificationTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numCacheNodes: (() { final guardedValue = map['numCacheNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      outpostMode: (() { final guardedValue = map['outpostMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      preferredAvailabilityZones: (() { final guardedValue = map['preferredAvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preferredOutpostArn: (() { final guardedValue = map['preferredOutpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      snapshotArns: (() { final guardedValue = map['snapshotArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitEncryptionEnabled: (() { final guardedValue = map['transitEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
