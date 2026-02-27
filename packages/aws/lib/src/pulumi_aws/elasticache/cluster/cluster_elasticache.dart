import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cache_node/cluster_cache_node.dart';
import '../cluster_log_delivery_configuration/cluster_log_delivery_configuration.dart';
import 'cluster_elasticache_args.dart';

/// Provides an ElastiCache Cluster resource, which manages a Memcached cluster, a single-node Redis instance,
/// or a read replica in a Redis (Cluster Mode Enabled) replication group. For more information, refer to
/// the AWS document [What is Amazon ElastiCache?](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/WhatIs.html).
///
/// For working with Redis (Cluster Mode Enabled) replication groups, see the
/// `aws.elasticache.ReplicationGroup` resource.
///
/// > **Note:** When you change an attribute, such as `num_cache_nodes`, by default
/// it is applied in the next maintenance window. Because of this, this provider may report
/// a difference in its planning phase because the actual modification has not yet taken
/// place. You can use the `apply_immediately` flag to instruct the service to apply the
/// change immediately. Using `apply_immediately` can result in a brief downtime as the server reboots.
/// See the "Changes take effect" section of the "Details" column in the AWS Documentation on Engine specific parameters for
/// [ElastiCache for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.Engine.html#ParameterGroups.Memcached) or
/// [ElastiCache for Valkey and Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ParameterGroups.Engine.html#ParameterGroups.Redis)
/// for more information.
///
/// > **Note:** Any attribute changes that re-create the resource will be applied immediately, regardless of the value of `apply_immediately`.
///
/// ## Example Usage
///
/// ### Memcached Cluster
///
///
///
/// ### Redis Instance
///
///
///
/// ### Redis Cluster Mode Disabled Read Replica Instance
///
/// These inherit their settings from the replication group.
///
///
///
/// ### Redis Log Delivery configuration
///
///
///
/// ### Elasticache Cluster in Outpost
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Clusters using the `cluster_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/cluster:Cluster my_cluster my_cluster
/// ```
class ClusterElasticache extends pulumi.CustomResource {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`. See [Amazon ElastiCache Documentation for more information](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheCluster.html).
  late final pulumi.Output<bool> applyImmediately;

  /// The ARN of the created ElastiCache Cluster.
  late final pulumi.Output<String> arn;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine type `"redis"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  late final pulumi.Output<String?> autoMinorVersionUpgrade;

  /// Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use `preferred_availability_zones` instead. Default: System chosen Availability Zone. Changing this value will re-create the resource.
  late final pulumi.Output<String> availabilityZone;

  /// Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are `single-az` or `cross-az`, default is `single-az`. If you want to choose `cross-az`, `num_cache_nodes` must be greater than `1`.
  late final pulumi.Output<String> azMode;

  /// List of node objects including `id`, `address`, `port` and `availability_zone`.
  late final pulumi.Output<List<ClusterCacheNode>> cacheNodes;

  /// (Memcached only) DNS name of the cache cluster without the port appended.
  late final pulumi.Output<String> clusterAddress;

  /// Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource.
  late final pulumi.Output<String> clusterId;

  /// (Memcached only) Configuration endpoint to allow host discovery.
  late final pulumi.Output<String> configurationEndpoint;

  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` and `valkey`.
  late final pulumi.Output<String> engine;

  /// Version number of the cache engine to be used.
  /// If not set, defaults to the latest version.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  /// When `engine` is `redis` and the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<String> engineVersion;

  /// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  late final pulumi.Output<String> engineVersionActual;

  /// Name of your final cluster snapshot. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;

  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipDiscovery;

  /// Specifies the destination and format of Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Log_Delivery.html). See Log Delivery Configuration below for more details.
  late final pulumi.Output<List<ClusterLogDeliveryConfiguration>?>
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC).
  /// The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`.
  late final pulumi.Output<String> maintenanceWindow;

  /// The IP versions for cache cluster connections. IPv6 is supported with Redis engine `6.2` onword or Memcached version `1.6.6` for all [Nitro system](https://aws.amazon.com/ec2/nitro/) instances. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  late final pulumi.Output<String> networkType;

  /// The instance class used.
  /// See AWS documentation for information on [supported node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen) and [guidance on selecting node types for Valkey or Redis OSS](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.redis).
  /// See AWS documentation for information on [supported node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.CurrentGen-Memcached) and [guidance on selecting node types for Memcached](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SelectSize.html#CacheNodes.SelectSize.Mem).
  /// For Memcached, changing this value will re-create the resource.
  late final pulumi.Output<String> nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`.
  late final pulumi.Output<String?> notificationTopicArn;

  /// The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed.
  late final pulumi.Output<int> numCacheNodes;

  /// Specify the outpost mode that will apply to the cache cluster creation. Valid values are `"single-outpost"` and `"cross-outpost"`, however AWS currently only supports `"single-outpost"` mode.
  late final pulumi.Output<String?> outpostMode;

  /// The name of the parameter group to associate with this cache cluster.
  late final pulumi.Output<String> parameterGroupName;

  /// The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with `replication_group_id`. Changing this value will re-create the resource.
  late final pulumi.Output<int> port;

  /// List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of `num_cache_nodes`. If you want all the nodes in the same Availability Zone, use `availability_zone` instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference.
  late final pulumi.Output<List<String>?> preferredAvailabilityZones;

  /// The outpost ARN in which the cache cluster will be created.
  late final pulumi.Output<String> preferredOutpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group.
  late final pulumi.Output<String> replicationGroupId;

  /// One or more VPC security groups associated with the cache cluster. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing `snapshot_arns` forces a new resource.
  late final pulumi.Output<String?> snapshotArns;

  /// Name of a snapshot from which to restore data into the new node group. Changing `snapshot_name` forces a new resource.
  late final pulumi.Output<String?> snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  late final pulumi.Output<int?> snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00
  late final pulumi.Output<String> snapshotWindow;

  /// Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. Cannot be provided with `replication_group_id.`
  late final pulumi.Output<String> subnetGroupName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Enable encryption in-transit. Supported with Memcached versions `1.6.12` and later, Valkey `7.2` and later, Redis OSS versions `3.2.6`, `4.0.10` and later, running in a VPC. See the [ElastiCache in-transit encryption documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/in-transit-encryption.html#in-transit-encryption-constraints) for more details.
  late final pulumi.Output<bool> transitEncryptionEnabled;

  ClusterElasticache(
    String name, {
    ClusterElasticacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<String?>('autoMinorVersionUpgrade');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.azMode = registerOutput<String>('azMode');
    this.cacheNodes = registerOutput<List<ClusterCacheNode>>('cacheNodes');
    this.clusterAddress = registerOutput<String>('clusterAddress');
    this.clusterId = registerOutput<String>('clusterId');
    this.configurationEndpoint =
        registerOutput<String>('configurationEndpoint');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.ipDiscovery = registerOutput<String>('ipDiscovery');
    this.logDeliveryConfigurations =
        registerOutput<List<ClusterLogDeliveryConfiguration>?>(
            'logDeliveryConfigurations');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.networkType = registerOutput<String>('networkType');
    this.nodeType = registerOutput<String>('nodeType');
    this.notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    this.numCacheNodes = registerOutput<int>('numCacheNodes');
    this.outpostMode = registerOutput<String?>('outpostMode');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.port = registerOutput<int>('port');
    this.preferredAvailabilityZones =
        registerOutput<List<String>?>('preferredAvailabilityZones');
    this.preferredOutpostArn = registerOutput<String>('preferredOutpostArn');
    this.region = registerOutput<String>('region');
    this.replicationGroupId = registerOutput<String>('replicationGroupId');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.snapshotArns = registerOutput<String?>('snapshotArns');
    this.snapshotName = registerOutput<String?>('snapshotName');
    this.snapshotRetentionLimit =
        registerOutput<int?>('snapshotRetentionLimit');
    this.snapshotWindow = registerOutput<String>('snapshotWindow');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitEncryptionEnabled =
        registerOutput<bool>('transitEncryptionEnabled');
  }
}
