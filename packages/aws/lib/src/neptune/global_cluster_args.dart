// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_global_cluster_global_cluster_args_doc}
/// The set of arguments for GlobalCluster.
/// {@endtemplate}
/// {@macro pulumi_neptune_global_cluster_global_cluster_args_doc}
class GlobalClusterArgs {
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `source_db_cluster_identifier`.
  final pulumi.Input<String>? engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  final pulumi.Input<String>? engineVersion;

  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  final pulumi.Input<String>? sourceDbClusterIdentifier;

  /// Whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;

  /// Creates a new [GlobalClusterArgs].
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `neptune`. Conflicts with `source_db_cluster_identifier`.
  /// [engineVersion] Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  /// [storageEncrypted] Whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  GlobalClusterArgs({
    bool? deletionProtection,
    String? engine,
    String? engineVersion,
    required String globalClusterIdentifier,
    String? region,
    String? sourceDbClusterIdentifier,
    bool? storageEncrypted,
  })  : deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        engine = pulumi.Input.asOptionalInput<String>(engine),
        engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
        globalClusterIdentifier =
            pulumi.Input.asInput<String>(globalClusterIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceDbClusterIdentifier =
            pulumi.Input.asOptionalInput<String>(sourceDbClusterIdentifier),
        storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
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
    return map;
  }

  factory GlobalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GlobalClusterArgs(
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion:
          map['engineVersion'] == null ? null : map['engineVersion'] as String,
      globalClusterIdentifier: map['globalClusterIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceDbClusterIdentifier: map['sourceDbClusterIdentifier'] == null
          ? null
          : map['sourceDbClusterIdentifier'] as String,
      storageEncrypted: map['storageEncrypted'] == null
          ? null
          : map['storageEncrypted'] as bool,
    );
  }
}
