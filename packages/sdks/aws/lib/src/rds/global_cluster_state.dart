// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_cluster_global_cluster_member.dart';

/// Input properties used for looking up and filtering GlobalCluster resources.
class GlobalClusterState {
  /// RDS Global Cluster Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? databaseName;
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;
  /// Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  final pulumi.Input<String>? endpoint;
  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `sourceDbClusterIdentifier`.
  final pulumi.Input<String>? engine;
  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final pulumi.Input<String>? engineLifecycleSupport;
  /// Engine version of the Aurora global database. The `engine`, `engineVersion`, and `instanceClass` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignoreChanges` for `engineVersion` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  final pulumi.Input<String>? engineVersion;
  final pulumi.Input<String>? engineVersionActual;
  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with `sourceDbClusterIdentifier`.
  final pulumi.Input<bool>? forceDestroy;
  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalClusterIdentifier;
  /// Set of objects containing Global Cluster members.
  final pulumi.Input<List<GlobalClusterGlobalClusterMember>>? globalClusterMembers;
  /// AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  final pulumi.Input<String>? globalClusterResourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engineVersion`. This allows upgrading the engine version of the Global Cluster.
  final pulumi.Input<String>? sourceDbClusterIdentifier;
  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `sourceDbClusterIdentifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;
  /// A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; When both `sourceDbClusterIdentifier` and `engine`/`engineVersion` are set, all engine related values will be ignored during creation. The global cluster will inherit the `engine` and `engineVersion` values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GlobalClusterState].
  /// [arn] RDS Global Cluster Amazon Resource Name (ARN).
  /// [databaseName] Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [endpoint] Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `sourceDbClusterIdentifier`.
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineVersion] Engine version of the Aurora global database. The `engine`, `engineVersion`, and `instanceClass` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignoreChanges` for `engineVersion` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  /// [engineVersionActual] Optional.
  /// [forceDestroy] Enable to remove DB Cluster members from Global Cluster on destroy. Required with `sourceDbClusterIdentifier`.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [globalClusterMembers] Set of objects containing Global Cluster members.
  /// [globalClusterResourceId] AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engineVersion`. This allows upgrading the engine version of the Global Cluster.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` unless `sourceDbClusterIdentifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const GlobalClusterState({
    this.arn,
    this.databaseName,
    this.deletionProtection,
    this.endpoint,
    this.engine,
    this.engineLifecycleSupport,
    this.engineVersion,
    this.engineVersionActual,
    this.forceDestroy,
    this.globalClusterIdentifier,
    this.globalClusterMembers,
    this.globalClusterResourceId,
    this.region,
    this.sourceDbClusterIdentifier,
    this.storageEncrypted,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'databaseName': ?databaseName,
      'deletionProtection': ?deletionProtection,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineLifecycleSupport': ?engineLifecycleSupport,
      'engineVersion': ?engineVersion,
      'engineVersionActual': ?engineVersionActual,
      'forceDestroy': ?forceDestroy,
      'globalClusterIdentifier': ?globalClusterIdentifier,
      'globalClusterMembers': ?pulumi.Input.mapOptionalInputValue<List<GlobalClusterGlobalClusterMember>, List<Map<String, dynamic>>>(globalClusterMembers, (value) => pulumi.Input.encodeList<GlobalClusterGlobalClusterMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalClusterResourceId': ?globalClusterResourceId,
      'region': ?region,
      'sourceDbClusterIdentifier': ?sourceDbClusterIdentifier,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory GlobalClusterState.fromMap(Map<String, dynamic> map) {
    return GlobalClusterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineLifecycleSupport: (() { final guardedValue = map['engineLifecycleSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersionActual: (() { final guardedValue = map['engineVersionActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globalClusterIdentifier: (() { final guardedValue = map['globalClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterMembers: (() { final guardedValue = map['globalClusterMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalClusterGlobalClusterMember>(guardedValue, (value) => GlobalClusterGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalClusterResourceId: (() { final guardedValue = map['globalClusterResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbClusterIdentifier: (() { final guardedValue = map['sourceDbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
