// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../engine_type/engine_type.dart';

/// The set of arguments for ClusterInstance.
class ClusterInstanceRdsArgs {
  /// Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;

  /// Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;

  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  final pulumi.Input<String>? availabilityZone;

  /// Identifier of the CA certificate for the DB instance.
  final pulumi.Input<String>? caCertIdentifier;

  /// Identifier of the `aws.rds.Cluster` in which to launch this instance.
  final pulumi.Input<String> clusterIdentifier;

  /// Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;

  /// Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  final pulumi.Input<String>? customIamInstanceProfile;

  /// Name of the DB parameter group to associate with this instance.
  final pulumi.Input<String>? dbParameterGroupName;

  /// Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `db_subnet_group_name` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `db_subnet_group_name` and `publicly_accessible` parameters affect DB instance behaviour. **NOTE:** This must match the `db_subnet_group_name` of the attached `aws.rds.Cluster`.
  final pulumi.Input<String>? dbSubnetGroupName;

  /// Name of the database engine to be used for the RDS cluster instance.
  /// Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`.(Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  final pulumi.Input<EngineType> engine;

  /// Database engine version. Please note that to upgrade the `engine_version` of the instance, it must be done on the `aws.rds.Cluster` `engine_version`. Trying to upgrade in `aws_cluster_instance` will not update the `engine_version`.
  final pulumi.Input<String>? engineVersion;

  /// Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  final pulumi.Input<bool>? forceDestroy;

  /// Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;

  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;

  /// Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  final pulumi.Input<String> instanceClass;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  final pulumi.Input<int>? monitoringInterval;

  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  final pulumi.Input<String>? monitoringRoleArn;

  /// Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through `aws.rds.Cluster`, this argument cannot be set to a value that conflicts with the cluster's configuration.
  final pulumi.Input<bool>? performanceInsightsEnabled;

  /// ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;

  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  final pulumi.Input<int>? performanceInsightsRetentionPeriod;

  /// Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If `preferred_backup_window` is set at the cluster level, this argument **must** be omitted.
  final pulumi.Input<String>? preferredBackupWindow;

  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  final pulumi.Input<int>? promotionTier;

  /// Bool to control if instance is publicly accessible. Default `false`. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html).
  final pulumi.Input<Map<String, String>>? tags;

  ClusterInstanceRdsArgs({
    this.applyImmediately,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.caCertIdentifier,
    required this.clusterIdentifier,
    this.copyTagsToSnapshot,
    this.customIamInstanceProfile,
    this.dbParameterGroupName,
    this.dbSubnetGroupName,
    required this.engine,
    this.engineVersion,
    this.forceDestroy,
    this.identifier,
    this.identifierPrefix,
    required this.instanceClass,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.performanceInsightsEnabled,
    this.performanceInsightsKmsKeyId,
    this.performanceInsightsRetentionPeriod,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.promotionTier,
    this.publiclyAccessible,
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
    map['clusterIdentifier'] = clusterIdentifier;
    final copyTagsToSnapshotValue = copyTagsToSnapshot;
    if (copyTagsToSnapshotValue != null) {
      map['copyTagsToSnapshot'] = copyTagsToSnapshotValue;
    }
    final customIamInstanceProfileValue = customIamInstanceProfile;
    if (customIamInstanceProfileValue != null) {
      map['customIamInstanceProfile'] = customIamInstanceProfileValue;
    }
    final dbParameterGroupNameValue = dbParameterGroupName;
    if (dbParameterGroupNameValue != null) {
      map['dbParameterGroupName'] = dbParameterGroupNameValue;
    }
    final dbSubnetGroupNameValue = dbSubnetGroupName;
    if (dbSubnetGroupNameValue != null) {
      map['dbSubnetGroupName'] = dbSubnetGroupNameValue;
    }
    map['engine'] = pulumi.Input.mapInputValue<EngineType, String>(
        engine, (value) => value.value);
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
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
    final monitoringIntervalValue = monitoringInterval;
    if (monitoringIntervalValue != null) {
      map['monitoringInterval'] = monitoringIntervalValue;
    }
    final monitoringRoleArnValue = monitoringRoleArn;
    if (monitoringRoleArnValue != null) {
      map['monitoringRoleArn'] = monitoringRoleArnValue;
    }
    final performanceInsightsEnabledValue = performanceInsightsEnabled;
    if (performanceInsightsEnabledValue != null) {
      map['performanceInsightsEnabled'] = performanceInsightsEnabledValue;
    }
    final performanceInsightsKmsKeyIdValue = performanceInsightsKmsKeyId;
    if (performanceInsightsKmsKeyIdValue != null) {
      map['performanceInsightsKmsKeyId'] = performanceInsightsKmsKeyIdValue;
    }
    final performanceInsightsRetentionPeriodValue =
        performanceInsightsRetentionPeriod;
    if (performanceInsightsRetentionPeriodValue != null) {
      map['performanceInsightsRetentionPeriod'] =
          performanceInsightsRetentionPeriodValue;
    }
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final promotionTierValue = promotionTier;
    if (promotionTierValue != null) {
      map['promotionTier'] = promotionTierValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
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

  factory ClusterInstanceRdsArgs.fromMap(Map<String, dynamic> map) {
    return ClusterInstanceRdsArgs(
      applyImmediately:
          pulumi.Input.asOptionalInput<bool>(map['applyImmediately']),
      autoMinorVersionUpgrade:
          pulumi.Input.asOptionalInput<bool>(map['autoMinorVersionUpgrade']),
      availabilityZone:
          pulumi.Input.asOptionalInput<String>(map['availabilityZone']),
      caCertIdentifier:
          pulumi.Input.asOptionalInput<String>(map['caCertIdentifier']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      copyTagsToSnapshot:
          pulumi.Input.asOptionalInput<bool>(map['copyTagsToSnapshot']),
      customIamInstanceProfile:
          pulumi.Input.asOptionalInput<String>(map['customIamInstanceProfile']),
      dbParameterGroupName:
          pulumi.Input.asOptionalInput<String>(map['dbParameterGroupName']),
      dbSubnetGroupName:
          pulumi.Input.asOptionalInput<String>(map['dbSubnetGroupName']),
      engine: pulumi.Input.asInput<EngineType>(map['engine']),
      engineVersion: pulumi.Input.asOptionalInput<String>(map['engineVersion']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      identifier: pulumi.Input.asOptionalInput<String>(map['identifier']),
      identifierPrefix:
          pulumi.Input.asOptionalInput<String>(map['identifierPrefix']),
      instanceClass: pulumi.Input.asInput<String>(map['instanceClass']),
      monitoringInterval:
          pulumi.Input.asOptionalInput<int>(map['monitoringInterval']),
      monitoringRoleArn:
          pulumi.Input.asOptionalInput<String>(map['monitoringRoleArn']),
      performanceInsightsEnabled:
          pulumi.Input.asOptionalInput<bool>(map['performanceInsightsEnabled']),
      performanceInsightsKmsKeyId: pulumi.Input.asOptionalInput<String>(
          map['performanceInsightsKmsKeyId']),
      performanceInsightsRetentionPeriod: pulumi.Input.asOptionalInput<int>(
          map['performanceInsightsRetentionPeriod']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      promotionTier: pulumi.Input.asOptionalInput<int>(map['promotionTier']),
      publiclyAccessible:
          pulumi.Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
