// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_global_replication_group_global_replication_group_args_doc}
/// The set of arguments for GlobalReplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_global_replication_group_global_replication_group_args_doc}
class GlobalReplicationGroupArgs {
  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  final pulumi.Input<bool?>? automaticFailoverEnabled;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  final pulumi.Input<String?>? cacheNodeType;
  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis` if `engineVersion` is specified.
  final pulumi.Input<String?>? engine;
  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  final pulumi.Input<String?>? engineVersion;
  /// A user-created description for the global replication group.
  final pulumi.Input<String?>? globalReplicationGroupDescription;
  /// The suffix name of a Global Datastore. If `globalReplicationGroupIdSuffix` is changed, creates a new resource.
  final pulumi.Input<String> globalReplicationGroupIdSuffix;
  /// The number of node groups (shards) on the global replication group.
  final pulumi.Input<int?>? numNodeGroups;
  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  final pulumi.Input<String?>? parameterGroupName;
  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primaryReplicationGroupId` is changed, creates a new resource.
  final pulumi.Input<String> primaryReplicationGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GlobalReplicationGroupArgs].
  /// [automaticFailoverEnabled] Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// [cacheNodeType] The instance class used.
  /// [engine] The name of the cache engine to be used for the clusters in this global replication group.
  /// [engineVersion] Engine version to use for the Global Replication Group.
  /// [globalReplicationGroupDescription] A user-created description for the global replication group.
  /// [globalReplicationGroupIdSuffix] The suffix name of a Global Datastore. If `globalReplicationGroupIdSuffix` is changed, creates a new resource.
  /// [numNodeGroups] The number of node groups (shards) on the global replication group.
  /// [parameterGroupName] An ElastiCache Parameter Group to use for the Global Replication Group.
  /// [primaryReplicationGroupId] The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primaryReplicationGroupId` is changed, creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GlobalReplicationGroupArgs({
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
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheNodeType: (() { final guardedValue = map['cacheNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalReplicationGroupDescription: (() { final guardedValue = map['globalReplicationGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalReplicationGroupIdSuffix: pulumi.Input.fromValue(map['globalReplicationGroupIdSuffix'] as String),
      numNodeGroups: (() { final guardedValue = map['numNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReplicationGroupId: pulumi.Input.fromValue(map['primaryReplicationGroupId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
