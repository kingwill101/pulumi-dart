import 'package:pulumi/pulumi.dart';
import '../global_replication_group_global_node_group/global_replication_group_global_node_group.dart';
import 'global_replication_group_args.dart';

/// Provides an ElastiCache Global Replication Group resource, which manages replication between two or more Replication Groups in different regions. For more information, see the [ElastiCache User Guide](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastore.html).
///
/// ## Example Usage
///
/// ### Global replication group with one secondary replication group
///
/// The global replication group depends on the primary group existing. Secondary replication groups depend on the global replication group. the provider dependency management will handle this transparently using resource value references.
///
///
///
/// ### Managing Redis OOS/Valkey Engine Versions
///
/// The initial Redis version is determined by the version set on the primary replication group.
/// However, once it is part of a Global Replication Group,
/// the Global Replication Group manages the version of all member replication groups.
///
/// The provider is configured to ignore changes to `engine`, `engine_version` and `parameter_group_name` inside `aws.elasticache.ReplicationGroup` resources if they belong to a global replication group.
///
/// In this example,
/// the primary replication group will be created with Redis 6.0,
/// and then upgraded to Redis 6.2 once added to the Global Replication Group.
/// The secondary replication group will be created with Redis 6.2.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Global Replication Groups using the `global_replication_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/globalReplicationGroup:GlobalReplicationGroup my_global_replication_group okuqm-global-replication-group-1
/// ```
class GlobalReplicationGroup extends CustomResource {
  /// The ARN of the ElastiCache Global Replication Group.
  late final Output<String> arn;

  /// A flag that indicate whether the encryption at rest is enabled.
  late final Output<bool> atRestEncryptionEnabled;

  /// A flag that indicate whether AuthToken (password) is enabled.
  late final Output<bool> authTokenEnabled;

  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  late final Output<bool> automaticFailoverEnabled;

  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  late final Output<String> cacheNodeType;

  /// Indicates whether the Global Datastore is cluster enabled.
  late final Output<bool> clusterEnabled;

  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis` if `engine_version` is specified.
  late final Output<String> engine;

  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  late final Output<String> engineVersion;

  /// The full version number of the cache engine running on the members of this global replication group.
  late final Output<String> engineVersionActual;

  /// Set of node groups (shards) on the global replication group.
  /// Has the values:
  late final Output<List<GlobalReplicationGroupGlobalNodeGroup>>
      globalNodeGroups;

  /// A user-created description for the global replication group.
  late final Output<String?> globalReplicationGroupDescription;

  /// The full ID of the global replication group.
  late final Output<String> globalReplicationGroupId;

  /// The suffix name of a Global Datastore. If `global_replication_group_id_suffix` is changed, creates a new resource.
  late final Output<String> globalReplicationGroupIdSuffix;

  /// The number of node groups (shards) on the global replication group.
  late final Output<int> numNodeGroups;

  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  late final Output<String?> parameterGroupName;

  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primary_replication_group_id` is changed, creates a new resource.
  late final Output<String> primaryReplicationGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A flag that indicates whether the encryption in transit is enabled.
  late final Output<bool> transitEncryptionEnabled;

  GlobalReplicationGroup(
    String name, {
    GlobalReplicationGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/globalReplicationGroup:GlobalReplicationGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.atRestEncryptionEnabled =
        registerOutput<bool>('atRestEncryptionEnabled');
    this.authTokenEnabled = registerOutput<bool>('authTokenEnabled');
    this.automaticFailoverEnabled =
        registerOutput<bool>('automaticFailoverEnabled');
    this.cacheNodeType = registerOutput<String>('cacheNodeType');
    this.clusterEnabled = registerOutput<bool>('clusterEnabled');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.engineVersionActual = registerOutput<String>('engineVersionActual');
    this.globalNodeGroups =
        registerOutput<List<GlobalReplicationGroupGlobalNodeGroup>>(
            'globalNodeGroups');
    this.globalReplicationGroupDescription =
        registerOutput<String?>('globalReplicationGroupDescription');
    this.globalReplicationGroupId =
        registerOutput<String>('globalReplicationGroupId');
    this.globalReplicationGroupIdSuffix =
        registerOutput<String>('globalReplicationGroupIdSuffix');
    this.numNodeGroups = registerOutput<int>('numNodeGroups');
    this.parameterGroupName = registerOutput<String?>('parameterGroupName');
    this.primaryReplicationGroupId =
        registerOutput<String>('primaryReplicationGroupId');
    this.region = registerOutput<String>('region');
    this.transitEncryptionEnabled =
        registerOutput<bool>('transitEncryptionEnabled');
  }
}
