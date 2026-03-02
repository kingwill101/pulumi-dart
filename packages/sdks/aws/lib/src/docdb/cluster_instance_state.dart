// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterInstance resources.
class ClusterInstanceState {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;
  /// ARN of cluster instance
  final pulumi.Input<String>? arn;
  /// Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  final pulumi.Input<String>? availabilityZone;
  /// Identifier of the certificate authority (CA) certificate for the DB instance.
  final pulumi.Input<String>? caCertIdentifier;
  /// Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to `false` only if you are not using SSL/TLS to connect to the DB instance.
  final pulumi.Input<String>? certificateRotationRestart;
  /// Identifier of the `aws.docdb.Cluster` in which to launch this instance.
  final pulumi.Input<String>? clusterIdentifier;
  /// Copy all DB instance `tags` to snapshots. Default is `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;
  /// DB subnet group to associate with this DB instance.
  final pulumi.Input<String>? dbSubnetGroupName;
  /// Region-unique, immutable identifier for the DB instance.
  final pulumi.Input<String>? dbiResourceId;
  /// Value that indicates whether to enable Performance Insights for the DB Instance. Default `false`. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  final pulumi.Input<bool>? enablePerformanceInsights;
  /// DNS address for this instance. May not be writable
  final pulumi.Input<String>? endpoint;
  /// Name of the database engine to be used for the DocumentDB instance. Defaults to `docdb`. Valid Values: `docdb`.
  final pulumi.Input<String>? engine;
  /// Database engine version
  final pulumi.Input<String>? engineVersion;
  /// The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the `aws.docdb.getOrderableDbInstance` data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  final pulumi.Input<String>? instanceClass;
  /// ARN for the KMS encryption key if one is set to the cluster.
  final pulumi.Input<String>? kmsKeyId;
  /// KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;
  /// Database port
  final pulumi.Input<int>? port;
  /// Daily time range during which automated backups are created if automated backups are enabled.
  final pulumi.Input<String>? preferredBackupWindow;
  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Failover Priority setting on instance level. Default `0`. The reader who has lower tier has higher priority to get promoter to writer.
  final pulumi.Input<int>? promotionTier;
  final pulumi.Input<bool>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether the DB cluster is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Whether this instance is writable. `False` indicates this instance is a read replica.
  final pulumi.Input<bool>? writer;

  /// Creates a new [ClusterInstanceState].
  /// [applyImmediately] Whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  /// [arn] ARN of cluster instance
  /// [autoMinorVersionUpgrade] Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default `true`.
  /// [availabilityZone] EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  /// [caCertIdentifier] Identifier of the certificate authority (CA) certificate for the DB instance.
  /// [certificateRotationRestart] Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to `false` only if you are not using SSL/TLS to connect to the DB instance.
  /// [clusterIdentifier] Identifier of the `aws.docdb.Cluster` in which to launch this instance.
  /// [copyTagsToSnapshot] Copy all DB instance `tags` to snapshots. Default is `false`.
  /// [dbSubnetGroupName] DB subnet group to associate with this DB instance.
  /// [dbiResourceId] Region-unique, immutable identifier for the DB instance.
  /// [enablePerformanceInsights] Value that indicates whether to enable Performance Insights for the DB Instance. Default `false`. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  /// [endpoint] DNS address for this instance. May not be writable
  /// [engine] Name of the database engine to be used for the DocumentDB instance. Defaults to `docdb`. Valid Values: `docdb`.
  /// [engineVersion] Database engine version
  /// [identifier] The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the `aws.docdb.getOrderableDbInstance` data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  /// [kmsKeyId] ARN for the KMS encryption key if one is set to the cluster.
  /// [performanceInsightsKmsKeyId] KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  /// [port] Database port
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled.
  /// [preferredMaintenanceWindow] Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  /// [promotionTier] Failover Priority setting on instance level. Default `0`. The reader who has lower tier has higher priority to get promoter to writer.
  /// [publiclyAccessible] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageEncrypted] Whether the DB cluster is encrypted.
  /// [tags] Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [writer] Whether this instance is writable. `False` indicates this instance is a read replica.
  ClusterInstanceState({
    this.applyImmediately,
    this.arn,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.caCertIdentifier,
    this.certificateRotationRestart,
    this.clusterIdentifier,
    this.copyTagsToSnapshot,
    this.dbSubnetGroupName,
    this.dbiResourceId,
    this.enablePerformanceInsights,
    this.endpoint,
    this.engine,
    this.engineVersion,
    this.identifier,
    this.identifierPrefix,
    this.instanceClass,
    this.kmsKeyId,
    this.performanceInsightsKmsKeyId,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.promotionTier,
    this.publiclyAccessible,
    this.region,
    this.storageEncrypted,
    this.tags,
    this.tagsAll,
    this.writer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'arn': ?arn,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'caCertIdentifier': ?caCertIdentifier,
      'certificateRotationRestart': ?certificateRotationRestart,
      'clusterIdentifier': ?clusterIdentifier,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbiResourceId': ?dbiResourceId,
      'enablePerformanceInsights': ?enablePerformanceInsights,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': ?instanceClass,
      'kmsKeyId': ?kmsKeyId,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'promotionTier': ?promotionTier,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'storageEncrypted': ?storageEncrypted,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'writer': ?writer,
    };
  }

  factory ClusterInstanceState.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceState(
      applyImmediately: map['applyImmediately'] == null ? null : ((map['applyImmediately'] as bool).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : ((map['autoMinorVersionUpgrade'] as bool).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      caCertIdentifier: map['caCertIdentifier'] == null ? null : ((map['caCertIdentifier'] as String).input()).input(),
      certificateRotationRestart: map['certificateRotationRestart'] == null ? null : ((map['certificateRotationRestart'] as String).input()).input(),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : ((map['clusterIdentifier'] as String).input()).input(),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : ((map['copyTagsToSnapshot'] as bool).input()).input(),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : ((map['dbSubnetGroupName'] as String).input()).input(),
      dbiResourceId: map['dbiResourceId'] == null ? null : ((map['dbiResourceId'] as String).input()).input(),
      enablePerformanceInsights: map['enablePerformanceInsights'] == null ? null : ((map['enablePerformanceInsights'] as bool).input()).input(),
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      engineVersion: map['engineVersion'] == null ? null : ((map['engineVersion'] as String).input()).input(),
      identifier: map['identifier'] == null ? null : ((map['identifier'] as String).input()).input(),
      identifierPrefix: map['identifierPrefix'] == null ? null : ((map['identifierPrefix'] as String).input()).input(),
      instanceClass: map['instanceClass'] == null ? null : ((map['instanceClass'] as String).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : ((map['performanceInsightsKmsKeyId'] as String).input()).input(),
      port: map['port'] == null ? null : ((map['port'] as int).input()).input(),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : ((map['preferredBackupWindow'] as String).input()).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : ((map['preferredMaintenanceWindow'] as String).input()).input(),
      promotionTier: map['promotionTier'] == null ? null : ((map['promotionTier'] as int).input()).input(),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : ((map['publiclyAccessible'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      storageEncrypted: map['storageEncrypted'] == null ? null : ((map['storageEncrypted'] as bool).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      writer: map['writer'] == null ? null : ((map['writer'] as bool).input()).input(),
    );
  }
}

