// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_docdb_cluster_instance_cluster_instance_args_doc}
/// The set of arguments for ClusterInstance.
/// {@endtemplate}
/// {@macro pulumi_docdb_cluster_instance_cluster_instance_args_doc}
class ClusterInstanceArgs {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  final pulumi.Input<String>? availabilityZone;
  /// Identifier of the certificate authority (CA) certificate for the DB instance.
  final pulumi.Input<String>? caCertIdentifier;
  /// Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to `false` only if you are not using SSL/TLS to connect to the DB instance.
  final pulumi.Input<String>? certificateRotationRestart;
  /// Identifier of the `aws.docdb.Cluster` in which to launch this instance.
  final pulumi.Input<String> clusterIdentifier;
  /// Copy all DB instance `tags` to snapshots. Default is `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;
  /// Value that indicates whether to enable Performance Insights for the DB Instance. Default `false`. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  final pulumi.Input<bool>? enablePerformanceInsights;
  /// Name of the database engine to be used for the DocumentDB instance. Defaults to `docdb`. Valid Values: `docdb`.
  final pulumi.Input<String>? engine;
  /// The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the `aws.docdb.getOrderableDbInstance` data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  final pulumi.Input<String> instanceClass;
  /// KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;
  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// Failover Priority setting on instance level. Default `0`. The reader who has lower tier has higher priority to get promoter to writer.
  final pulumi.Input<int>? promotionTier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterInstanceArgs].
  /// [applyImmediately] Whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  /// [autoMinorVersionUpgrade] Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default `true`.
  /// [availabilityZone] EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  /// [caCertIdentifier] Identifier of the certificate authority (CA) certificate for the DB instance.
  /// [certificateRotationRestart] Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to `false` only if you are not using SSL/TLS to connect to the DB instance.
  /// [clusterIdentifier] Identifier of the `aws.docdb.Cluster` in which to launch this instance.
  /// [copyTagsToSnapshot] Copy all DB instance `tags` to snapshots. Default is `false`.
  /// [enablePerformanceInsights] Value that indicates whether to enable Performance Insights for the DB Instance. Default `false`. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  /// [engine] Name of the database engine to be used for the DocumentDB instance. Defaults to `docdb`. Valid Values: `docdb`.
  /// [identifier] The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the `aws.docdb.getOrderableDbInstance` data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  /// [performanceInsightsKmsKeyId] KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  /// [preferredMaintenanceWindow] Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  /// [promotionTier] Failover Priority setting on instance level. Default `0`. The reader who has lower tier has higher priority to get promoter to writer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterInstanceArgs({
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? caCertIdentifier,
    pulumi.Output<String>? certificateRotationRestart,
    required pulumi.Output<String> clusterIdentifier,
    pulumi.Output<bool>? copyTagsToSnapshot,
    pulumi.Output<bool>? enablePerformanceInsights,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    required pulumi.Output<String> instanceClass,
    pulumi.Output<String>? performanceInsightsKmsKeyId,
    pulumi.Output<String>? preferredMaintenanceWindow,
    pulumi.Output<int>? promotionTier,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applyImmediately = pulumi.Input.asOptionalInput<bool>(applyImmediately),
      autoMinorVersionUpgrade = pulumi.Input.asOptionalInput<bool>(autoMinorVersionUpgrade),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      caCertIdentifier = pulumi.Input.asOptionalInput<String>(caCertIdentifier),
      certificateRotationRestart = pulumi.Input.asOptionalInput<String>(certificateRotationRestart),
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      copyTagsToSnapshot = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
      enablePerformanceInsights = pulumi.Input.asOptionalInput<bool>(enablePerformanceInsights),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      instanceClass = pulumi.Input.asInput<String>(instanceClass),
      performanceInsightsKmsKeyId = pulumi.Input.asOptionalInput<String>(performanceInsightsKmsKeyId),
      preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(preferredMaintenanceWindow),
      promotionTier = pulumi.Input.asOptionalInput<int>(promotionTier),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyImmediately': ?applyImmediately,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'caCertIdentifier': ?caCertIdentifier,
      'certificateRotationRestart': ?certificateRotationRestart,
      'clusterIdentifier': clusterIdentifier,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'enablePerformanceInsights': ?enablePerformanceInsights,
      'engine': ?engine,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': instanceClass,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'promotionTier': ?promotionTier,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ClusterInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceArgs(
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      caCertIdentifier: map['caCertIdentifier'] == null ? null : pulumi.Output.create<String>(map['caCertIdentifier'] as String),
      certificateRotationRestart: map['certificateRotationRestart'] == null ? null : pulumi.Output.create<String>(map['certificateRotationRestart'] as String),
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshot'] as bool),
      enablePerformanceInsights: map['enablePerformanceInsights'] == null ? null : pulumi.Output.create<bool>(map['enablePerformanceInsights'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      instanceClass: pulumi.Output.create<String>(map['instanceClass'] as String),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['performanceInsightsKmsKeyId'] as String),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['preferredMaintenanceWindow'] as String),
      promotionTier: map['promotionTier'] == null ? null : pulumi.Output.create<int>(map['promotionTier'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

