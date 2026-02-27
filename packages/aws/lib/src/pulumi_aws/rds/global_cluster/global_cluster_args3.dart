// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalCluster.
class GlobalClusterArgs3 {
  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  final Input<String>? databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final Input<bool>? deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`. Defaults to `aurora`. Conflicts with `source_db_cluster_identifier`.
  final Input<String>? engine;

  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final Input<String>? engineLifecycleSupport;

  /// Engine version of the Aurora global database. The `engine`, `engine_version`, and `instance_class` (on the `aws.rds.ClusterInstance`) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the `lifecycle` `ignore_changes` for `engine_version` meta argument on the associated `aws.rds.Cluster` resource as shown above in Upgrading Engine Versions example.
  final Input<String>? engineVersion;

  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with `source_db_cluster_identifier`.
  final Input<bool>? forceDestroy;

  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  final Input<String> globalClusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with `engine` and `engine_version`. This allows upgrading the engine version of the Global Cluster.
  final Input<String>? sourceDbClusterIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final Input<bool>? storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both `source_db_cluster_identifier` and `engine`/`engine_version` are set, all engine related values will be ignored during creation. The global cluster will inherit the `engine` and `engine_version` values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
  final Input<Map<String, String>>? tags;

  GlobalClusterArgs3({
    this.databaseName,
    this.deletionProtection,
    this.engine,
    this.engineLifecycleSupport,
    this.engineVersion,
    this.forceDestroy,
    required this.globalClusterIdentifier,
    this.region,
    this.sourceDbClusterIdentifier,
    this.storageEncrypted,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseNameValue = databaseName;
    if (databaseNameValue != null) {
      map['databaseName'] = databaseNameValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineLifecycleSupportValue = engineLifecycleSupport;
    if (engineLifecycleSupportValue != null) {
      map['engineLifecycleSupport'] = engineLifecycleSupportValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    map['globalClusterIdentifier'] = globalClusterIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceDbClusterIdentifierValue = sourceDbClusterIdentifier;
    if (sourceDbClusterIdentifierValue != null) {
      map['sourceDbClusterIdentifier'] = sourceDbClusterIdentifierValue;
    }
    final storageEncryptedValue = storageEncrypted;
    if (storageEncryptedValue != null) {
      map['storageEncrypted'] = storageEncryptedValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GlobalClusterArgs3.fromMap(Map<String, dynamic> map) {
    return GlobalClusterArgs3(
      databaseName: Input.asOptionalInput<String>(map['databaseName']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineLifecycleSupport:
          Input.asOptionalInput<String>(map['engineLifecycleSupport']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      globalClusterIdentifier:
          Input.asInput<String>(map['globalClusterIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceDbClusterIdentifier:
          Input.asOptionalInput<String>(map['sourceDbClusterIdentifier']),
      storageEncrypted: Input.asOptionalInput<bool>(map['storageEncrypted']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
