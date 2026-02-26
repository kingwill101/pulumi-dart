// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalReplicationGroup.
class GlobalReplicationGroupArgs {
  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  final Input<bool>? automaticFailoverEnabled;

  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  final Input<String>? cacheNodeType;

  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> or <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>.
  /// Default is <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> if <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> is specified.
  final Input<String>? engine;

  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute <span pulumi-lang-nodejs="`engineVersionActual`" pulumi-lang-dotnet="`EngineVersionActual`" pulumi-lang-go="`engineVersionActual`" pulumi-lang-python="`engine_version_actual`" pulumi-lang-yaml="`engineVersionActual`" pulumi-lang-java="`engineVersionActual`">`engine_version_actual`</span>, see Attribute Reference below.
  final Input<String>? engineVersion;

  /// A user-created description for the global replication group.
  final Input<String>? globalReplicationGroupDescription;

  /// The suffix name of a Global Datastore. If <span pulumi-lang-nodejs="`globalReplicationGroupIdSuffix`" pulumi-lang-dotnet="`GlobalReplicationGroupIdSuffix`" pulumi-lang-go="`globalReplicationGroupIdSuffix`" pulumi-lang-python="`global_replication_group_id_suffix`" pulumi-lang-yaml="`globalReplicationGroupIdSuffix`" pulumi-lang-java="`globalReplicationGroupIdSuffix`">`global_replication_group_id_suffix`</span> is changed, creates a new resource.
  final Input<String> globalReplicationGroupIdSuffix;

  /// The number of node groups (shards) on the global replication group.
  final Input<int>? numNodeGroups;

  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  final Input<String>? parameterGroupName;

  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If <span pulumi-lang-nodejs="`primaryReplicationGroupId`" pulumi-lang-dotnet="`PrimaryReplicationGroupId`" pulumi-lang-go="`primaryReplicationGroupId`" pulumi-lang-python="`primary_replication_group_id`" pulumi-lang-yaml="`primaryReplicationGroupId`" pulumi-lang-java="`primaryReplicationGroupId`">`primary_replication_group_id`</span> is changed, creates a new resource.
  final Input<String> primaryReplicationGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
    final map = <String, dynamic>{};
    final automaticFailoverEnabledValue = automaticFailoverEnabled;
    if (automaticFailoverEnabledValue != null) {
      map['automaticFailoverEnabled'] = automaticFailoverEnabledValue;
    }
    final cacheNodeTypeValue = cacheNodeType;
    if (cacheNodeTypeValue != null) {
      map['cacheNodeType'] = cacheNodeTypeValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final globalReplicationGroupDescriptionValue =
        globalReplicationGroupDescription;
    if (globalReplicationGroupDescriptionValue != null) {
      map['globalReplicationGroupDescription'] =
          globalReplicationGroupDescriptionValue;
    }
    map['globalReplicationGroupIdSuffix'] = globalReplicationGroupIdSuffix;
    final numNodeGroupsValue = numNodeGroups;
    if (numNodeGroupsValue != null) {
      map['numNodeGroups'] = numNodeGroupsValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    map['primaryReplicationGroupId'] = primaryReplicationGroupId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GlobalReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GlobalReplicationGroupArgs(
      automaticFailoverEnabled:
          Input.asOptionalInput<bool>(map['automaticFailoverEnabled']),
      cacheNodeType: Input.asOptionalInput<String>(map['cacheNodeType']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      globalReplicationGroupDescription: Input.asOptionalInput<String>(
          map['globalReplicationGroupDescription']),
      globalReplicationGroupIdSuffix:
          Input.asInput<String>(map['globalReplicationGroupIdSuffix']),
      numNodeGroups: Input.asOptionalInput<int>(map['numNodeGroups']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      primaryReplicationGroupId:
          Input.asInput<String>(map['primaryReplicationGroupId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
