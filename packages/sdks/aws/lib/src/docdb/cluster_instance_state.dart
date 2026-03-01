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
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? caCertIdentifier,
    pulumi.Output<String>? certificateRotationRestart,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<bool>? copyTagsToSnapshot,
    pulumi.Output<String>? dbSubnetGroupName,
    pulumi.Output<String>? dbiResourceId,
    pulumi.Output<bool>? enablePerformanceInsights,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? performanceInsightsKmsKeyId,
    pulumi.Output<int>? port,
    pulumi.Output<String>? preferredBackupWindow,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<int>? promotionTier,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? storageEncrypted,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? writer,
  }) :
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      caCertIdentifier = pulumi.Input.asOptionalInput<String>(caCertIdentifier),
      certificateRotationRestart = pulumi.Input.asOptionalInput<String>(certificateRotationRestart),
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      copyTagsToSnapshot = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
      dbSubnetGroupName = pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
      dbiResourceId = pulumi.Input.asOptionalInput<String>(dbiResourceId),
      enablePerformanceInsights = pulumi.Input.asOptionalInput<bool>(enablePerformanceInsights),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      performanceInsightsKmsKeyId = pulumi.Input.asOptionalInput<String>(performanceInsightsKmsKeyId),
      port = pulumi.Input.asOptionalInput<int>(port),
      preferredBackupWindow = pulumi.Input.asOptionalInput<String>(preferredBackupWindow),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      promotionTier = pulumi.Input.asOptionalInput<int>(promotionTier),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageEncrypted = pulumi.Input.asOptionalInput<bool>(storageEncrypted),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      writer = pulumi.Input.asOptionalInput<bool>(writer);

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
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      caCertIdentifier: map['caCertIdentifier'] == null ? null : pulumi.Output.create<String>(map['caCertIdentifier'] as String),
      certificateRotationRestart: map['certificateRotationRestart'] == null ? null : pulumi.Output.create<String>(map['certificateRotationRestart'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshot'] as bool),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['dbSubnetGroupName'] as String),
      dbiResourceId: map['dbiResourceId'] == null ? null : pulumi.Output.create<String>(map['dbiResourceId'] as String),
      enablePerformanceInsights: map['enablePerformanceInsights'] == null ? null : pulumi.Output.create<bool>(map['enablePerformanceInsights'] as bool),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['performanceInsightsKmsKeyId'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      preferredBackupWindow: map['preferredBackupWindow'] == null ? null : pulumi.Output.create<String>(map['preferredBackupWindow'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      promotionTier: map['promotionTier'] == null ? null : pulumi.Output.create<int>(map['promotionTier'] as int),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageEncrypted: map['storageEncrypted'] == null ? null : pulumi.Output.create<bool>(map['storageEncrypted'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      writer: map['writer'] == null ? null : pulumi.Output.create<bool>(map['writer'] as bool),
    );
  }
}

