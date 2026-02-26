// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ClusterInstance.
class ClusterInstanceArgs {
  /// Whether any database modifications are applied immediately, or during the next maintenance window. Default is<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? applyImmediately;

  /// Parameter does not apply to Amazon DocumentDB. Amazon DocumentDB does not perform minor version upgrades regardless of the value set (see [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_DBInstance.html)). Default <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? autoMinorVersionUpgrade;

  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/documentdb/latest/developerguide/API_CreateDBInstance.html) about the details.
  final Input<String>? availabilityZone;

  /// Identifier of the certificate authority (CA) certificate for the DB instance.
  final Input<String>? caCertIdentifier;

  /// Whether to restart the DB instance when rotating its SSL/TLS certificate. By default, AWS restarts the DB instance when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted. Set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> only if you are not using SSL/TLS to connect to the DB instance.
  final Input<String>? certificateRotationRestart;

  /// Identifier of the <span pulumi-lang-nodejs="`aws.docdb.Cluster`" pulumi-lang-dotnet="`aws.docdb.Cluster`" pulumi-lang-go="`docdb.Cluster`" pulumi-lang-python="`docdb.Cluster`" pulumi-lang-yaml="`aws.docdb.Cluster`" pulumi-lang-java="`aws.docdb.Cluster`">`aws.docdb.Cluster`</span> in which to launch this instance.
  final Input<String> clusterIdentifier;

  /// Copy all DB instance <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> to snapshots. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? copyTagsToSnapshot;

  /// Value that indicates whether to enable Performance Insights for the DB Instance. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. See [docs] (https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html) about the details.
  final Input<bool>? enablePerformanceInsights;

  /// Name of the database engine to be used for the DocumentDB instance. Defaults to <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>. Valid Values: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>.
  final Input<String>? engine;

  /// The identifier for the DocumentDB instance, if omitted, the provider will assign a random, unique identifier.
  final Input<String>? identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  final Input<String>? identifierPrefix;

  /// Instance class to use. For details on CPU and memory, see [Scaling for DocumentDB Instances](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-manage-performance.html#db-cluster-manage-scaling-instance). See the <span pulumi-lang-nodejs="`aws.docdb.getOrderableDbInstance`" pulumi-lang-dotnet="`aws.docdb.getOrderableDbInstance`" pulumi-lang-go="`docdb.getOrderableDbInstance`" pulumi-lang-python="`docdb_get_orderable_db_instance`" pulumi-lang-yaml="`aws.docdb.getOrderableDbInstance`" pulumi-lang-java="`aws.docdb.getOrderableDbInstance`">`aws.docdb.getOrderableDbInstance`</span> data source. See [AWS Documentation](https://docs.aws.amazon.com/documentdb/latest/developerguide/db-instance-classes.html#db-instance-class-specs) for complete details.
  final Input<String> instanceClass;

  /// KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. If you do not specify a value for PerformanceInsightsKMSKeyId, then Amazon DocumentDB uses your default KMS key.
  final Input<String>? performanceInsightsKmsKeyId;

  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final Input<String>? preferredMaintenanceWindow;

  /// Failover Priority setting on instance level. Default <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>. The reader who has lower tier has higher priority to get promoter to writer.
  final Input<int>? promotionTier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the instance. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      applyImmediately: Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      caCertIdentifier: Input.asOptionalInput<String>(map['caCertIdentifier']),
      certificateRotationRestart:
          Input.asOptionalInput<String>(map['certificateRotationRestart']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      copyTagsToSnapshot:
          Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      enablePerformanceInsights:
          Input.asOptionalInput<bool>(map['enablePerformanceInsights']),
      engine: Input.asOptionalInput<String>(map['engine']),
      identifier: Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix: Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: Input.asInput<String>(map['instanceClass']),
      performanceInsightsKmsKeyId:
          Input.asOptionalInput<String>(map['performanceInsightsKmsKeyId']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      promotionTier: Input.asOptionalInput<int>(map['promotionTier']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
