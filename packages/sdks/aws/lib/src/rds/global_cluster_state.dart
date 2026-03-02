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
  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `source_db_cluster_identifier`.
  final pulumi.Input<String>? engine;
  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final pulumi.Input<String>? engineLifecycleSupport;
  /// Engine version of the Aurora global database. The `engine`, `engine_version`, and `instance_class` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignore_changes` for `engine_version` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  final pulumi.Input<String>? engineVersion;
  final pulumi.Input<String>? engineVersionActual;
  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with `source_db_cluster_identifier`.
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
  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engine_version`. This allows upgrading the engine version of the Global Cluster.
  final pulumi.Input<String>? sourceDbClusterIdentifier;
  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;
  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both `source_db_cluster_identifier` and `engine`/`engine_version` are set, all engine related values will be ignored during creation. The global cluster will inherit the `engine` and `engine_version` values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [GlobalClusterState].
  /// [arn] RDS Global Cluster Amazon Resource Name (ARN).
  /// [databaseName] Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [endpoint] Writer endpoint for the new global database cluster. This endpoint always points to the writer DB instance in the current primary cluster.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `source_db_cluster_identifier`.
  /// [engineLifecycleSupport] The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  /// [engineVersion] Engine version of the Aurora global database. The `engine`, `engine_version`, and `instance_class` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignore_changes` for `engine_version` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  /// [engineVersionActual] Optional.
  /// [forceDestroy] Enable to remove DB Cluster members from Global Cluster on destroy. Required with `source_db_cluster_identifier`.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [globalClusterMembers] Set of objects containing Global Cluster members.
  /// [globalClusterResourceId] AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engine_version`. This allows upgrading the engine version of the Global Cluster.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  /// [tags] A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  GlobalClusterState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      deletionProtection: map['deletionProtection'] == null ? null : ((map['deletionProtection'] as bool).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineLifecycleSupport: map['engineLifecycleSupport'] == null ? null : ((map['engineLifecycleSupport'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      engineVersionActual: map['engineVersionActual'] == null ? null : ((map['engineVersionActual'] as String).input()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : ((map['forceDestroy'] as bool).input()).input(),
      globalClusterIdentifier: map['globalClusterIdentifier'] == null ? null : ((map['globalClusterIdentifier'] as String).input()).input(),
      globalClusterMembers: map['globalClusterMembers'] == null ? null : ((pulumi.Input.decodeList<GlobalClusterGlobalClusterMember>(map['globalClusterMembers']!, (value) => GlobalClusterGlobalClusterMember.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      globalClusterResourceId: map['globalClusterResourceId'] == null ? null : ((map['globalClusterResourceId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceDbClusterIdentifier: map['sourceDbClusterIdentifier'] == null ? null : ((map['sourceDbClusterIdentifier'] as String).input()).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : ((map['storageEncrypted'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

