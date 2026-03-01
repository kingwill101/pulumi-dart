// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_docdb_global_cluster_global_cluster_args_doc}
/// The set of arguments for GlobalCluster.
/// {@endtemplate}
/// {@macro pulumi_docdb_global_cluster_global_cluster_args_doc}
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

  /// Creates a new [GlobalClusterArgs].
  /// [databaseName] Name for an automatically created database on cluster creation.
  /// [deletionProtection] If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to `true`. The default is `false`.
  /// [engine] Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: `docdb`. Defaults to `docdb`. Conflicts with `source_db_cluster_identifier`.
  /// [engineVersion] Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  /// [globalClusterIdentifier] The global cluster identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceDbClusterIdentifier] Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted. The default is `false` unless `source_db_cluster_identifier` is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  GlobalClusterArgs({
    String? databaseName,
    bool? deletionProtection,
    String? engine,
    String? engineVersion,
    required String globalClusterIdentifier,
    String? region,
    String? sourceDbClusterIdentifier,
    bool? storageEncrypted,
  }) : databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
       deletionProtection = pulumi.Input.asOptionalInput<bool>(
         deletionProtection,
       ),
       engine = pulumi.Input.asOptionalInput<String>(engine),
       engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
       globalClusterIdentifier = pulumi.Input.asInput<String>(
         globalClusterIdentifier,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       sourceDbClusterIdentifier = pulumi.Input.asOptionalInput<String>(
         sourceDbClusterIdentifier,
       ),
       storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'deletionProtection': ?deletionProtection,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'globalClusterIdentifier': globalClusterIdentifier,
      'region': ?region,
      'sourceDbClusterIdentifier': ?sourceDbClusterIdentifier,
      'storageEncrypted': ?storageEncrypted,
    };
  }

  factory GlobalClusterArgs.fromMap(Map<String, dynamic> map) {
    return GlobalClusterArgs(
      databaseName: map['databaseName'] == null
          ? null
          : map['databaseName'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] == null
          ? null
          : map['engineVersion'] as String,
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
