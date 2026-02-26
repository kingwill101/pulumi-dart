// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalCluster.
class GlobalClusterArgs3 {
  /// Name for an automatically created database on cluster creation. Pulumi will only perform drift detection if a configuration value is provided.
  final Input<String>? databaseName;

  /// If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? deletionProtection;

  /// Name of the database engine to be used for this DB cluster. The provider will only perform drift detection if a configuration value is provided. Valid values: <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-mysql`, `aurora-postgresql`. Defaults to <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>. Conflicts with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  final Input<String>? engine;

  /// The life cycle type for this DB instance. This setting applies only to Aurora PostgreSQL-based global databases. Valid values are `open-source-rds-extended-support`, `open-source-rds-extended-support-disabled`. Default value is `open-source-rds-extended-support`. [Using Amazon RDS Extended Support]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/extended-support.html
  final Input<String>? engineLifecycleSupport;

  /// Engine version of the Aurora global database. The <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span>, <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>, and <span pulumi-lang-nodejs="`instanceClass`" pulumi-lang-dotnet="`InstanceClass`" pulumi-lang-go="`instanceClass`" pulumi-lang-python="`instance_class`" pulumi-lang-yaml="`instanceClass`" pulumi-lang-java="`instanceClass`">`instance_class`</span> (on the <span pulumi-lang-nodejs="`aws.rds.ClusterInstance`" pulumi-lang-dotnet="`aws.rds.ClusterInstance`" pulumi-lang-go="`rds.ClusterInstance`" pulumi-lang-python="`rds.ClusterInstance`" pulumi-lang-yaml="`aws.rds.ClusterInstance`" pulumi-lang-java="`aws.rds.ClusterInstance`">`aws.rds.ClusterInstance`</span>) must together support global databases. See [Using Amazon Aurora global databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html) for more information. By upgrading the engine version, the provider will upgrade cluster members. **NOTE:** To avoid an `inconsistent final plan` error while upgrading, use the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> for <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> meta argument on the associated <span pulumi-lang-nodejs="`aws.rds.Cluster`" pulumi-lang-dotnet="`aws.rds.Cluster`" pulumi-lang-go="`rds.Cluster`" pulumi-lang-python="`rds.Cluster`" pulumi-lang-yaml="`aws.rds.Cluster`" pulumi-lang-java="`aws.rds.Cluster`">`aws.rds.Cluster`</span> resource as shown above in Upgrading Engine Versions example.
  final Input<String>? engineVersion;

  /// Enable to remove DB Cluster members from Global Cluster on destroy. Required with <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span>.
  final Input<bool>? forceDestroy;

  /// Global cluster identifier.
  ///
  /// The following arguments are optional:
  final Input<String> globalClusterIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. The provider cannot perform drift detection of this value. **NOTE:** After initial creation, this argument can be removed and replaced with <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span>. This allows upgrading the engine version of the Global Cluster.
  final Input<String>? sourceDbClusterIdentifier;

  /// Specifies whether the DB cluster is encrypted. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> unless <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> is specified and encrypted. The provider will only perform drift detection if a configuration value is provided.
  final Input<bool>? storageEncrypted;

  /// A map of tags to assign to the DB cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > When both <span pulumi-lang-nodejs="`sourceDbClusterIdentifier`" pulumi-lang-dotnet="`SourceDbClusterIdentifier`" pulumi-lang-go="`sourceDbClusterIdentifier`" pulumi-lang-python="`source_db_cluster_identifier`" pulumi-lang-yaml="`sourceDbClusterIdentifier`" pulumi-lang-java="`sourceDbClusterIdentifier`">`source_db_cluster_identifier`</span> and <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span>/<span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> are set, all engine related values will be ignored during creation. The global cluster will inherit the <span pulumi-lang-nodejs="`engine`" pulumi-lang-dotnet="`Engine`" pulumi-lang-go="`engine`" pulumi-lang-python="`engine`" pulumi-lang-yaml="`engine`" pulumi-lang-java="`engine`">`engine`</span> and <span pulumi-lang-nodejs="`engineVersion`" pulumi-lang-dotnet="`EngineVersion`" pulumi-lang-go="`engineVersion`" pulumi-lang-python="`engine_version`" pulumi-lang-yaml="`engineVersion`" pulumi-lang-java="`engineVersion`">`engine_version`</span> values from the source cluster. After the first apply, any differences between the inherited and configured values will trigger an in-place update.
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
