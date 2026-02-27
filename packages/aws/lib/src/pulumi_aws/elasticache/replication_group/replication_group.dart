import 'package:pulumi/pulumi.dart' as pulumi;
import '../replication_group_log_delivery_configuration/replication_group_log_delivery_configuration.dart';
import '../replication_group_node_group_configuration/replication_group_node_group_configuration.dart';
import 'replication_group_args.dart';

/// Provides an ElastiCache Replication Group resource.
///
/// For working with a [Memcached cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/WhatIs.html) or a
/// [single-node Redis instance (Cluster Mode Disabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/WhatIs.html),
/// see the `aws.elasticache.Cluster` resource.
///
/// > **Note:** When you change an attribute, such as `engine_version`, by
/// default the ElastiCache API applies it in the next maintenance window. Because
/// of this, this provider may report a difference in its planning phase because the
/// actual modification has not yet taken place. You can use the
/// `apply_immediately` flag to instruct the service to apply the change
/// immediately. Using `apply_immediately` can result in a brief downtime as
/// servers reboots.
/// See the AWS Documentation on
/// [Modifying an ElastiCache Cache Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Modify.html)
/// for more information.
///
/// > **Note:** Any attribute changes that re-create the resource will be applied immediately, regardless of the value of `apply_immediately`.
///
/// > **Note:** Be aware of the terminology collision around "cluster" for `aws.elasticache.ReplicationGroup`. For example, it is possible to create a ["Cluster Mode Disabled [Redis] Cluster"](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Create.CON.Redis.html). With "Cluster Mode Enabled", the data will be stored in shards (called "node groups"). See [Redis Cluster Configuration](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/cluster-create-determine-requirements.html#redis-cluster-configuration) for a diagram of the differences. To enable cluster mode, use a parameter group that has cluster mode enabled. The default parameter groups provided by AWS end with ".cluster.on", for example `default.redis6.x.cluster.on`.
///
/// ## Example Usage
///
/// ### Redis OSS/Valkey Cluster Mode Disabled
///
/// To create a single shard primary with single read replica:
///
///
///
/// You have two options for adjusting the number of replicas:
///
/// * Adjusting `num_cache_clusters` directly. This will attempt to automatically add or remove replicas, but provides no granular control (e.g., preferred availability zone, cache cluster ID) for the added or removed replicas. This also currently expects cache cluster IDs in the form of `replication_group_id-00#`.
/// * Otherwise for fine grained control of the underlying cache clusters, they can be added or removed with the `aws.elasticache.Cluster` resource and its `replication_group_id` attribute. In this situation, you will need to utilize [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to prevent perpetual differences with the `number_cache_cluster` attribute.
///
///
///
/// ### Redis OSS/Valkey Cluster Mode Enabled
///
/// To create two shards with a primary and a single read replica each:
///
///
///
/// ### Redis OSS/Valkey Cluster Mode Enabled with Node Group Configuration
///
/// To create a cluster with specific availability zone placement and keyspace distribution:
///
///
///
/// ### Redis Log Delivery configuration
///
///
///
/// > **Note:** We currently do not support passing a `primary_cluster_id` in order to create the Replication Group.
///
/// > **Note:** Automatic Failover is unavailable for Redis versions earlier than 2.8.6,
/// and unavailable on T1 node types. For T2 node types, it is only available on Redis version 3.2.4 or later with cluster mode enabled. See the [High Availability Using Replication Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Replication.html) guide
/// for full details on using Replication Groups.
///
/// ### Creating a secondary replication group for a global replication group
///
/// A Global Replication Group can have up to two secondary Replication Groups in different regions. These are added to an existing Global Replication Group.
///
///
///
/// ### Redis AUTH and In-Transit Encryption Enabled
///
///
///
/// > When adding a new `auth_token` to a previously passwordless replication group, using the `ROTATE` update strategy will result in support for **both** the new token and passwordless authentication. To immediately require authorization when adding the initial token, use the `SET` strategy instead. See the [Authenticating with the Redis AUTH command](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html) guide for additional details.
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Replication Groups using the `replication_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/replicationGroup:ReplicationGroup my_replication_group replication-group-1
/// ```
class ReplicationGroup extends pulumi.CustomResource {
  /// Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`.
  late final pulumi.Output<bool> applyImmediately;

  /// ARN of the created ElastiCache Replication Group.
  late final pulumi.Output<String> arn;

  /// Whether to enable encryption at rest.
  /// When `engine` is `redis`, default is `false`.
  /// When `engine` is `valkey`, default is `true`.
  late final pulumi.Output<bool> atRestEncryptionEnabled;

  /// Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`.
  late final pulumi.Output<String?> authToken;

  /// Strategy used when modifying `auth_token` on an existing replication group. Not used during initial create. Valid values are `SET`, `ROTATE`, and `DELETE`. If omitted during an auth token change, AWS defaults to `ROTATE`. If value is `DELETE` then `auth_token` must be omitted.
  late final pulumi.Output<String?> authTokenUpdateStrategy;

  /// Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.
  /// Only supported for engine types `"redis"` and `"valkey"` and if the engine version is 6 or higher.
  /// Defaults to `true`.
  late final pulumi.Output<bool> autoMinorVersionUpgrade;

  /// Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, `num_cache_clusters` must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`.
  late final pulumi.Output<bool?> automaticFailoverEnabled;

  /// Indicates if cluster mode is enabled.
  late final pulumi.Output<bool> clusterEnabled;

  /// Specifies whether cluster mode is enabled or disabled. Valid values are `enabled` or `disabled` or `compatible`
  late final pulumi.Output<String> clusterMode;

  /// Address of the replication group configuration endpoint when cluster mode is enabled.
  late final pulumi.Output<String> configurationEndpointAddress;

  /// Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to `true` when using r6gd nodes.
  late final pulumi.Output<bool> dataTieringEnabled;

  /// User-created description for the replication group. Must not be empty.
  late final pulumi.Output<String> description;

  /// Name of the cache engine to be used for the clusters in this replication group.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis`.
  late final pulumi.Output<String> engine;

  /// Version number of the cache engine to be used for the cache clusters in this replication group.
  /// If the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// If the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// Otherwise, specify the full version desired, e.g., `5.0.6`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  late final pulumi.Output<String> engineVersion;

  /// Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine.
  late final pulumi.Output<String> engineVersionActual;

  /// The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotIdentifier;

  /// The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If `global_replication_group_id` is set, the `num_node_groups` parameter cannot be set.
  late final pulumi.Output<String> globalReplicationGroupId;

  /// The IP version to advertise in the discovery protocol. Valid values are `ipv4` or `ipv6`.
  late final pulumi.Output<String> ipDiscovery;

  /// The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`.
  late final pulumi.Output<String?> kmsKeyId;

  /// Specifies the destination and format of Redis OSS/Valkey [SLOWLOG](https://redis.io/commands/slowlog) or Redis OSS/Valkey [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See the documentation on [Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log). See Log Delivery Configuration below for more details.
  late final pulumi.Output<List<ReplicationGroupLogDeliveryConfiguration>?>
      logDeliveryConfigurations;

  /// Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`
  late final pulumi.Output<String> maintenanceWindow;

  /// Identifiers of all the nodes that are part of this replication group.
  late final pulumi.Output<List<String>> memberClusters;

  /// Specifies whether to enable Multi-AZ Support for the replication group.
  /// If `true`, `automatic_failover_enabled` must also be enabled.
  /// Defaults to `false`.
  late final pulumi.Output<bool?> multiAzEnabled;

  /// The IP versions for cache cluster connections. Valid values are `ipv4`, `ipv6` or `dual_stack`.
  late final pulumi.Output<String> networkType;

  /// Configuration block for node groups (shards). Can be specified only if `num_node_groups` is set. Conflicts with `preferred_cache_cluster_azs`. See Node Group Configuration below for more details.
  late final pulumi.Output<List<ReplicationGroupNodeGroupConfiguration>>
      nodeGroupConfigurations;

  /// Instance class to be used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html) and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// Required unless `global_replication_group_id` is set.
  /// Cannot be set if `global_replication_group_id` is set.
  late final pulumi.Output<String> nodeType;

  /// ARN of an SNS topic to send ElastiCache notifications to. Example: `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  late final pulumi.Output<String?> notificationTopicArn;

  /// Number of cache clusters (primary and replicas) this replication group will have.
  /// If `automatic_failover_enabled` or `multi_az_enabled` are `true`, must be at least 2.
  /// Updates will occur before other modifications.
  /// Conflicts with `num_node_groups` and `replicas_per_node_group`.
  /// Defaults to `1`.
  late final pulumi.Output<int> numCacheClusters;

  /// Number of node groups (shards) for this Redis replication group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Conflicts with `num_cache_clusters`.
  late final pulumi.Output<int> numNodeGroups;

  /// Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable "cluster mode", i.e., data sharding, use a parameter group that has the parameter `cluster-enabled` set to true.
  late final pulumi.Output<String> parameterGroupName;

  /// Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379.
  late final pulumi.Output<int?> port;

  /// List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating.
  late final pulumi.Output<List<String>?> preferredCacheClusterAzs;

  /// (Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled.
  late final pulumi.Output<String> primaryEndpointAddress;

  /// (Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled.
  late final pulumi.Output<String> readerEndpointAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Number of replica nodes in each node group.
  /// Changing this number will trigger a resizing operation before other settings modifications.
  /// Valid values are 0 to 5.
  /// Conflicts with `num_cache_clusters`.
  /// Can only be set if `num_node_groups` is set.
  late final pulumi.Output<int> replicasPerNodeGroup;

  /// Replication group identifier. This parameter is stored as a lowercase string.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> replicationGroupId;

  /// IDs of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Names of one or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud.
  late final pulumi.Output<List<String>> securityGroupNames;

  /// List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas.
  late final pulumi.Output<List<String>?> snapshotArns;

  /// Name of a snapshot from which to restore data into the new node group. Changing the `snapshot_name` forces a new resource.
  late final pulumi.Output<String?> snapshotName;

  /// Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of `snapshot_retention_limit` is set to zero (0), backups are turned off. Please note that setting a `snapshot_retention_limit` is not supported on cache.t1.micro cache nodes
  late final pulumi.Output<int?> snapshotRetentionLimit;

  /// Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: `05:00-09:00`
  late final pulumi.Output<String> snapshotWindow;

  /// Name of the cache subnet group to be used for the replication group.
  late final pulumi.Output<String> subnetGroupName;

  /// Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Whether to enable encryption in transit.
  /// Changing this argument with an `engine_version` < `7.0.5` will force a replacement.
  /// Engine versions prior to `7.0.5` only allow this transit encryption to be configured during creation of the replication group.
  late final pulumi.Output<bool> transitEncryptionEnabled;

  /// A setting that enables clients to migrate to in-transit encryption with no downtime.
  /// Valid values are `preferred` and `required`.
  /// When enabling encryption on an existing replication group, this must first be set to `preferred` before setting it to `required` in a subsequent apply.
  /// See the `TransitEncryptionMode` field in the [`CreateReplicationGroup` API documentation](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateReplicationGroup.html) for additional details.
  late final pulumi.Output<String> transitEncryptionMode;

  /// User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. **NOTE:** This argument _is_ a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.
  late final pulumi.Output<List<String>?> userGroupIds;

  ReplicationGroup(
    String name, {
    ReplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/replicationGroup:ReplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.atRestEncryptionEnabled =
        registerOutput<bool>('atRestEncryptionEnabled');
    this.authToken = registerOutput<String?>('authToken');
    this.authTokenUpdateStrategy =
        registerOutput<String?>('authTokenUpdateStrategy');
    this.autoMinorVersionUpgrade =
        registerOutput<bool>('autoMinorVersionUpgrade');
    this.automaticFailoverEnabled =
        registerOutput<bool?>('automaticFailoverEnabled');
    this.clusterEnabled = registerOutput<bool>('clusterEnabled');
    this.clusterMode = registerOutput<String>('clusterMode');
    this.configurationEndpointAddress =
        registerOutput<String>('configurationEndpointAddress');
    this.dataTieringEnabled = registerOutput<bool>('dataTieringEnabled');
    this.description = registerOutput<String>('description');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.finalSnapshotIdentifier =
        registerOutput<String?>('finalSnapshotIdentifier');
    this.globalReplicationGroupId =
        registerOutput<String>('globalReplicationGroupId');
    this.ipDiscovery = registerOutput<String>('ipDiscovery');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.logDeliveryConfigurations =
        registerOutput<List<ReplicationGroupLogDeliveryConfiguration>?>(
            'logDeliveryConfigurations');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.memberClusters = registerOutput<List<String>>('memberClusters');
    this.multiAzEnabled = registerOutput<bool?>('multiAzEnabled');
    this.networkType = registerOutput<String>('networkType');
    this.nodeGroupConfigurations =
        registerOutput<List<ReplicationGroupNodeGroupConfiguration>>(
            'nodeGroupConfigurations');
    this.nodeType = registerOutput<String>('nodeType');
    this.notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    this.numCacheClusters = registerOutput<int>('numCacheClusters');
    this.numNodeGroups = registerOutput<int>('numNodeGroups');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.port = registerOutput<int?>('port');
    this.preferredCacheClusterAzs =
        registerOutput<List<String>?>('preferredCacheClusterAzs');
    this.primaryEndpointAddress =
        registerOutput<String>('primaryEndpointAddress');
    this.readerEndpointAddress =
        registerOutput<String>('readerEndpointAddress');
    this.region = registerOutput<String>('region');
    this.replicasPerNodeGroup = registerOutput<int>('replicasPerNodeGroup');
    this.replicationGroupId = registerOutput<String>('replicationGroupId');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.securityGroupNames =
        registerOutput<List<String>>('securityGroupNames');
    this.snapshotArns = registerOutput<List<String>?>('snapshotArns');
    this.snapshotName = registerOutput<String?>('snapshotName');
    this.snapshotRetentionLimit =
        registerOutput<int?>('snapshotRetentionLimit');
    this.snapshotWindow = registerOutput<String>('snapshotWindow');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitEncryptionEnabled =
        registerOutput<bool>('transitEncryptionEnabled');
    this.transitEncryptionMode =
        registerOutput<String>('transitEncryptionMode');
    this.userGroupIds = registerOutput<List<String>?>('userGroupIds');
  }
}
