// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_replication_group_global_node_group.dart';

/// Input properties used for looking up and filtering GlobalReplicationGroup resources.
class GlobalReplicationGroupState {
  /// The ARN of the ElastiCache Global Replication Group.
  final pulumi.Input<String>? arn;
  /// A flag that indicate whether the encryption at rest is enabled.
  final pulumi.Input<bool>? atRestEncryptionEnabled;
  /// A flag that indicate whether AuthToken (password) is enabled.
  final pulumi.Input<bool>? authTokenEnabled;
  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  final pulumi.Input<bool>? automaticFailoverEnabled;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  final pulumi.Input<String>? cacheNodeType;
  /// Indicates whether the Global Datastore is cluster enabled.
  final pulumi.Input<bool>? clusterEnabled;
  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis` if `engineVersion` is specified.
  final pulumi.Input<String>? engine;
  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute `engineVersionActual`, see Attribute Reference below.
  final pulumi.Input<String>? engineVersion;
  /// The full version number of the cache engine running on the members of this global replication group.
  final pulumi.Input<String>? engineVersionActual;
  /// Set of node groups (shards) on the global replication group.
  /// Has the values:
  final pulumi.Input<List<GlobalReplicationGroupGlobalNodeGroup>>? globalNodeGroups;
  /// A user-created description for the global replication group.
  final pulumi.Input<String>? globalReplicationGroupDescription;
  /// The full ID of the global replication group.
  final pulumi.Input<String>? globalReplicationGroupId;
  /// The suffix name of a Global Datastore. If `globalReplicationGroupIdSuffix` is changed, creates a new resource.
  final pulumi.Input<String>? globalReplicationGroupIdSuffix;
  /// The number of node groups (shards) on the global replication group.
  final pulumi.Input<int>? numNodeGroups;
  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  final pulumi.Input<String>? parameterGroupName;
  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primaryReplicationGroupId` is changed, creates a new resource.
  final pulumi.Input<String>? primaryReplicationGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A flag that indicates whether the encryption in transit is enabled.
  final pulumi.Input<bool>? transitEncryptionEnabled;

  /// Creates a new [GlobalReplicationGroupState].
  /// [arn] The ARN of the ElastiCache Global Replication Group.
  /// [atRestEncryptionEnabled] A flag that indicate whether the encryption at rest is enabled.
  /// [authTokenEnabled] A flag that indicate whether AuthToken (password) is enabled.
  /// [automaticFailoverEnabled] Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// [cacheNodeType] The instance class used.
  /// [clusterEnabled] Indicates whether the Global Datastore is cluster enabled.
  /// [engine] The name of the cache engine to be used for the clusters in this global replication group.
  /// [engineVersion] Engine version to use for the Global Replication Group.
  /// [engineVersionActual] The full version number of the cache engine running on the members of this global replication group.
  /// [globalNodeGroups] Set of node groups (shards) on the global replication group.
  /// [globalReplicationGroupDescription] A user-created description for the global replication group.
  /// [globalReplicationGroupId] The full ID of the global replication group.
  /// [globalReplicationGroupIdSuffix] The suffix name of a Global Datastore. If `globalReplicationGroupIdSuffix` is changed, creates a new resource.
  /// [numNodeGroups] The number of node groups (shards) on the global replication group.
  /// [parameterGroupName] An ElastiCache Parameter Group to use for the Global Replication Group.
  /// [primaryReplicationGroupId] The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primaryReplicationGroupId` is changed, creates a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitEncryptionEnabled] A flag that indicates whether the encryption in transit is enabled.
  const GlobalReplicationGroupState({
    this.arn,
    this.atRestEncryptionEnabled,
    this.authTokenEnabled,
    this.automaticFailoverEnabled,
    this.cacheNodeType,
    this.clusterEnabled,
    this.engine,
    this.engineVersion,
    this.engineVersionActual,
    this.globalNodeGroups,
    this.globalReplicationGroupDescription,
    this.globalReplicationGroupId,
    this.globalReplicationGroupIdSuffix,
    this.numNodeGroups,
    this.parameterGroupName,
    this.primaryReplicationGroupId,
    this.region,
    this.transitEncryptionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'atRestEncryptionEnabled': ?atRestEncryptionEnabled,
      'authTokenEnabled': ?authTokenEnabled,
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'cacheNodeType': ?cacheNodeType,
      'clusterEnabled': ?clusterEnabled,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'engineVersionActual': ?engineVersionActual,
      'globalNodeGroups': ?pulumi.Input.mapOptionalInputValue<List<GlobalReplicationGroupGlobalNodeGroup>, List<Map<String, dynamic>>>(globalNodeGroups, (value) => pulumi.Input.encodeList<GlobalReplicationGroupGlobalNodeGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalReplicationGroupDescription': ?globalReplicationGroupDescription,
      'globalReplicationGroupId': ?globalReplicationGroupId,
      'globalReplicationGroupIdSuffix': ?globalReplicationGroupIdSuffix,
      'numNodeGroups': ?numNodeGroups,
      'parameterGroupName': ?parameterGroupName,
      'primaryReplicationGroupId': ?primaryReplicationGroupId,
      'region': ?region,
      'transitEncryptionEnabled': ?transitEncryptionEnabled,
    };
  }

  factory GlobalReplicationGroupState.fromMap(Map<String, dynamic> map) {
    return GlobalReplicationGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      atRestEncryptionEnabled: (() { final guardedValue = map['atRestEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authTokenEnabled: (() { final guardedValue = map['authTokenEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheNodeType: (() { final guardedValue = map['cacheNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterEnabled: (() { final guardedValue = map['clusterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersionActual: (() { final guardedValue = map['engineVersionActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNodeGroups: (() { final guardedValue = map['globalNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalReplicationGroupGlobalNodeGroup>(guardedValue, (value) => GlobalReplicationGroupGlobalNodeGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalReplicationGroupDescription: (() { final guardedValue = map['globalReplicationGroupDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalReplicationGroupId: (() { final guardedValue = map['globalReplicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalReplicationGroupIdSuffix: (() { final guardedValue = map['globalReplicationGroupIdSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numNodeGroups: (() { final guardedValue = map['numNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReplicationGroupId: (() { final guardedValue = map['primaryReplicationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitEncryptionEnabled: (() { final guardedValue = map['transitEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
