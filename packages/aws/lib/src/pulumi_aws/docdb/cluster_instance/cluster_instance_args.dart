// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ClusterInstance.
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

  ClusterInstanceArgs({
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.caCertIdentifier,
    this.certificateRotationRestart,
    required this.clusterIdentifier,
    this.copyTagsToSnapshot,
    this.enablePerformanceInsights,
    this.engine,
    this.identifier,
    this.identifierPrefix,
    required this.instanceClass,
    this.performanceInsightsKmsKeyId,
    this.preferredMaintenanceWindow,
    this.promotionTier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyImmediatelyValue = applyImmediately;
    if (applyImmediatelyValue != null) {
      map['applyImmediately'] = applyImmediatelyValue;
    }
    final autoMinorVersionUpgradeValue = autoMinorVersionUpgrade;
    if (autoMinorVersionUpgradeValue != null) {
      map['autoMinorVersionUpgrade'] = autoMinorVersionUpgradeValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final caCertIdentifierValue = caCertIdentifier;
    if (caCertIdentifierValue != null) {
      map['caCertIdentifier'] = caCertIdentifierValue;
    }
    final certificateRotationRestartValue = certificateRotationRestart;
    if (certificateRotationRestartValue != null) {
      map['certificateRotationRestart'] = certificateRotationRestartValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final copyTagsToSnapshotValue = copyTagsToSnapshot;
    if (copyTagsToSnapshotValue != null) {
      map['copyTagsToSnapshot'] = copyTagsToSnapshotValue;
    }
    final enablePerformanceInsightsValue = enablePerformanceInsights;
    if (enablePerformanceInsightsValue != null) {
      map['enablePerformanceInsights'] = enablePerformanceInsightsValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final identifierValue = identifier;
    if (identifierValue != null) {
      map['identifier'] = identifierValue;
    }
    final identifierPrefixValue = identifierPrefix;
    if (identifierPrefixValue != null) {
      map['identifierPrefix'] = identifierPrefixValue;
    }
    map['instanceClass'] = instanceClass;
    final performanceInsightsKmsKeyIdValue = performanceInsightsKmsKeyId;
    if (performanceInsightsKmsKeyIdValue != null) {
      map['performanceInsightsKmsKeyId'] = performanceInsightsKmsKeyIdValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final promotionTierValue = promotionTier;
    if (promotionTierValue != null) {
      map['promotionTier'] = promotionTierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceArgs(
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      caCertIdentifier:
          pulumi.Input.asOptionalInput<String>(map['caCertIdentifier']),
      certificateRotationRestart: pulumi.Input.asOptionalInput<String>(
          map['certificateRotationRestart']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      copyTagsToSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      enablePerformanceInsights:
          pulumi.Input.asOptionalInput<bool>(map['enablePerformanceInsights']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      identifier: pulumi.Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: pulumi.Input.asInput<String>(map['instanceClass']),
      performanceInsightsKmsKeyId: pulumi.Input.asOptionalInput<String>(
          map['performanceInsightsKmsKeyId']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      promotionTier: pulumi.Input.asOptionalInput<int>(map['promotionTier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
