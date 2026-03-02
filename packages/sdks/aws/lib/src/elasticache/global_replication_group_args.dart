// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_global_replication_group_global_replication_group_args_doc}
/// The set of arguments for GlobalReplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_global_replication_group_global_replication_group_args_doc}
class GlobalReplicationGroupArgs {
  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  final pulumi.Input<bool>? automaticFailoverEnabled;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  final pulumi.Input<String>? cacheNodeType;
  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis` if `engine_version` is specified.
  final pulumi.Input<String>? engine;
  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  final pulumi.Input<String>? engineVersion;
  /// A user-created description for the global replication group.
  final pulumi.Input<String>? globalReplicationGroupDescription;
  /// The suffix name of a Global Datastore. If `global_replication_group_id_suffix` is changed, creates a new resource.
  final pulumi.Input<String> globalReplicationGroupIdSuffix;
  /// The number of node groups (shards) on the global replication group.
  final pulumi.Input<int>? numNodeGroups;
  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  final pulumi.Input<String>? parameterGroupName;
  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primary_replication_group_id` is changed, creates a new resource.
  final pulumi.Input<String> primaryReplicationGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GlobalReplicationGroupArgs].
  /// [automaticFailoverEnabled] Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// [cacheNodeType] The instance class used.
  /// [engine] The name of the cache engine to be used for the clusters in this global replication group.
  /// [engineVersion] Engine version to use for the Global Replication Group.
  /// [globalReplicationGroupDescription] A user-created description for the global replication group.
  /// [globalReplicationGroupIdSuffix] The suffix name of a Global Datastore. If `global_replication_group_id_suffix` is changed, creates a new resource.
  /// [numNodeGroups] The number of node groups (shards) on the global replication group.
  /// [parameterGroupName] An ElastiCache Parameter Group to use for the Global Replication Group.
  /// [primaryReplicationGroupId] The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primary_replication_group_id` is changed, creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GlobalReplicationGroupArgs({
    this.automaticFailoverEnabled,
    this.cacheNodeType,
    this.engine,
    this.engineVersion,
    this.globalReplicationGroupDescription,
    required this.globalReplicationGroupIdSuffix,
    this.numNodeGroups,
    this.parameterGroupName,
    required this.primaryReplicationGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'cacheNodeType': ?cacheNodeType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'globalReplicationGroupDescription': ?globalReplicationGroupDescription,
      'globalReplicationGroupIdSuffix': globalReplicationGroupIdSuffix,
      'numNodeGroups': ?numNodeGroups,
      'parameterGroupName': ?parameterGroupName,
      'primaryReplicationGroupId': primaryReplicationGroupId,
      'region': ?region,
    };
  }

  factory GlobalReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalReplicationGroupArgs(
      automaticFailoverEnabled: map['automaticFailoverEnabled'] == null ? null : (map['automaticFailoverEnabled'] as bool).input(),
      cacheNodeType: map['cacheNodeType'] == null ? null : (map['cacheNodeType'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      globalReplicationGroupDescription: map['globalReplicationGroupDescription'] == null ? null : (map['globalReplicationGroupDescription'] as String).input(),
      globalReplicationGroupIdSuffix: (map['globalReplicationGroupIdSuffix'] as String).input(),
      numNodeGroups: map['numNodeGroups'] == null ? null : (map['numNodeGroups'] as int).input(),
      parameterGroupName: map['parameterGroupName'] == null ? null : (map['parameterGroupName'] as String).input(),
      primaryReplicationGroupId: (map['primaryReplicationGroupId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

