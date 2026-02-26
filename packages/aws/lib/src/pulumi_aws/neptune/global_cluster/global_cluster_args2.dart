// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalCluster.
class GlobalClusterArgs2 {
  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Current Valid values: <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>. Conflicts with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  final Input<String>? engine;

  /// Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.
  final Input<String>? engineVersion;

  /// Global cluster identifier.
  final Input<String> globalClusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN to use as the primary DB Cluster of the Global Cluster on creation. Pulumi cannot perform drift detection of this value.
  final Input<String>? sourceDbClusterIdentifier;

  /// Whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> unless <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> is specified and encrypted. Pulumi will only perform drift detection if a configuration value is provided.
  final Input<bool>? storageEncrypted;

  GlobalClusterArgs2({
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

  factory GlobalClusterArgs2.fromMap(Map<String, dynamic> map) {
    return GlobalClusterArgs2(
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      globalClusterIdentifier:
          Input.asInput<String>(map['globalClusterIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceDbClusterIdentifier:
          Input.asOptionalInput<String>(map['sourceDbClusterIdentifier']),
      storageEncrypted: Input.asOptionalInput<bool>(map['storageEncrypted']),
    );
  }
}
