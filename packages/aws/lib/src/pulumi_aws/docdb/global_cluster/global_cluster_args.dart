// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GlobalCluster.
class GlobalClusterArgs {
  /// Name for an automatically created database on cluster creation.
  final pulumi.Input<String>? databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  final pulumi.Input<bool>? deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `docdb`. Defaults to `docdb`. Conflicts with `source_db_cluster_identifier`.
  final pulumi.Input<String>? engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// * **NOTE:** Upgrading major versions is not supported.
  final pulumi.Input<String>? engineVersion;

  /// The global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  final pulumi.Input<String>? sourceDbClusterIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final pulumi.Input<bool>? storageEncrypted;

  GlobalClusterArgs({
    this.databaseName,
    this.deletionProtection,
    this.engine,
    this.engineVersion,
    required this.globalClusterIdentifier,
    this.region,
    this.sourceDbClusterIdentifier,
    this.storageEncrypted,
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
      databaseName: pulumi.Input.asOptionalInput<String>(map['databaseName']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      globalClusterIdentifier:
          pulumi.Input.asInput<String>(map['globalClusterIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceDbClusterIdentifier: pulumi.Input.asOptionalInput<String>(
          map['sourceDbClusterIdentifier']),
      storageEncrypted:
          pulumi.Input.asOptionalInput<bool>(map['storageEncrypted']),
    );
  }
}
