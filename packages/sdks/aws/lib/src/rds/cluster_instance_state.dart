// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_type.dart';

/// Input properties used for looking up and filtering ClusterInstance resources.
class ClusterInstanceState {
  /// Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool?>? applyImmediately;
  /// ARN of cluster instance
  final pulumi.Input<String?>? arn;
  /// Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  final pulumi.Input<bool?>? autoMinorVersionUpgrade;
  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  final pulumi.Input<String?>? availabilityZone;
  /// Identifier of the CA certificate for the DB instance.
  final pulumi.Input<String?>? caCertIdentifier;
  /// Identifier of the `aws.rds.Cluster` in which to launch this instance.
  final pulumi.Input<String?>? clusterIdentifier;
  /// Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  final pulumi.Input<bool?>? copyTagsToSnapshot;
  /// Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  final pulumi.Input<String?>? customIamInstanceProfile;
  /// Name of the DB parameter group to associate with this instance.
  final pulumi.Input<String?>? dbParameterGroupName;
  /// Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `dbSubnetGroupName` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `dbSubnetGroupName` and `publiclyAccessible` parameters affect DB instance behaviour. **NOTE:** This must match the `dbSubnetGroupName` of the attached `aws.rds.Cluster`.
  final pulumi.Input<String?>? dbSubnetGroupName;
  /// Region-unique, immutable identifier for the DB instance.
  final pulumi.Input<String?>? dbiResourceId;
  /// DNS address for this instance. May not be writable
  final pulumi.Input<String?>? endpoint;
  /// Name of the database engine to be used for the RDS cluster instance.
  /// Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`.(Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  final pulumi.Input<EngineType?>? engine;
  /// Database engine version. Please note that to upgrade the `engineVersion` of the instance, it must be done on the `aws.rds.Cluster` `engineVersion`. Trying to upgrade in `aws.rds.ClusterInstance` will not update the `engineVersion`.
  final pulumi.Input<String?>? engineVersion;
  /// Database engine version
  final pulumi.Input<String?>? engineVersionActual;
  /// Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  final pulumi.Input<bool?>? forceDestroy;
  /// Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  final pulumi.Input<String?>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String?>? identifierPrefix;
  /// Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  final pulumi.Input<dynamic>? instanceClass;
  /// ARN for the KMS encryption key if one is set to the cluster.
  final pulumi.Input<String?>? kmsKeyId;
  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  final pulumi.Input<int?>? monitoringInterval;
  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  final pulumi.Input<String?>? monitoringRoleArn;
  /// Network type of the DB instance.
  final pulumi.Input<String?>? networkType;
  /// Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through `aws.rds.Cluster`, this argument cannot be set to a value that conflicts with the cluster's configuration.
  final pulumi.Input<bool?>? performanceInsightsEnabled;
  /// ARN for the KMS key to encrypt Performance Insights data. When specifying `performanceInsightsKmsKeyId`, `performanceInsightsEnabled` needs to be set to true.
  final pulumi.Input<String?>? performanceInsightsKmsKeyId;
  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performanceInsightsRetentionPeriod`, `performanceInsightsEnabled` needs to be set to true. Defaults to '7'.
  final pulumi.Input<int?>? performanceInsightsRetentionPeriod;
  /// Database port
  final pulumi.Input<int?>? port;
  /// Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If `preferredBackupWindow` is set at the cluster level, this argument **must** be omitted.
  final pulumi.Input<String?>? preferredBackupWindow;
  /// Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  final pulumi.Input<String?>? preferredMaintenanceWindow;
  /// Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  final pulumi.Input<int?>? promotionTier;
  /// Bool to control if instance is publicly accessible. Default `false`. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  final pulumi.Input<bool?>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Specifies whether the DB cluster is encrypted.
  final pulumi.Input<bool?>? storageEncrypted;
  /// Map of tags to assign to the instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html).
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  final pulumi.Input<bool?>? writer;

  /// Creates a new [ClusterInstanceState].
  /// [applyImmediately] Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  /// [arn] ARN of cluster instance
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  /// [availabilityZone] EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  /// [caCertIdentifier] Identifier of the CA certificate for the DB instance.
  /// [clusterIdentifier] Identifier of the `aws.rds.Cluster` in which to launch this instance.
  /// [copyTagsToSnapshot] Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  /// [customIamInstanceProfile] Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  /// [dbParameterGroupName] Name of the DB parameter group to associate with this instance.
  /// [dbSubnetGroupName] Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `dbSubnetGroupName` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `dbSubnetGroupName` and `publiclyAccessible` parameters affect DB instance behaviour. **NOTE:** This must match the `dbSubnetGroupName` of the attached `aws.rds.Cluster`.
  /// [dbiResourceId] Region-unique, immutable identifier for the DB instance.
  /// [endpoint] DNS address for this instance. May not be writable
  /// [engine] Name of the database engine to be used for the RDS cluster instance.
  /// [engineVersion] Database engine version. Please note that to upgrade the `engineVersion` of the instance, it must be done on the `aws.rds.Cluster` `engineVersion`. Trying to upgrade in `aws.rds.ClusterInstance` will not update the `engineVersion`.
  /// [engineVersionActual] Database engine version
  /// [forceDestroy] Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  /// [identifier] Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  /// [identifierPrefix] Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  /// [instanceClass] Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  /// [kmsKeyId] ARN for the KMS encryption key if one is set to the cluster.
  /// [monitoringInterval] Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  /// [monitoringRoleArn] ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  /// [networkType] Network type of the DB instance.
  /// [performanceInsightsEnabled] Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through `aws.rds.Cluster`, this argument cannot be set to a value that conflicts with the cluster's configuration.
  /// [performanceInsightsKmsKeyId] ARN for the KMS key to encrypt Performance Insights data. When specifying `performanceInsightsKmsKeyId`, `performanceInsightsEnabled` needs to be set to true.
  /// [performanceInsightsRetentionPeriod] Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performanceInsightsRetentionPeriod`, `performanceInsightsEnabled` needs to be set to true. Defaults to '7'.
  /// [port] Database port
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If `preferredBackupWindow` is set at the cluster level, this argument **must** be omitted.
  /// [preferredMaintenanceWindow] Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  /// [promotionTier] Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  /// [publiclyAccessible] Bool to control if instance is publicly accessible. Default `false`. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted.
  /// [tags] Map of tags to assign to the instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [writer] Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  const ClusterInstanceState({
    this.applyImmediately,
    this.arn,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.caCertIdentifier,
    this.clusterIdentifier,
    this.copyTagsToSnapshot,
    this.customIamInstanceProfile,
    this.dbParameterGroupName,
    this.dbSubnetGroupName,
    this.dbiResourceId,
    this.endpoint,
    this.engine,
    this.engineVersion,
    this.engineVersionActual,
    this.forceDestroy,
    this.identifier,
    this.identifierPrefix,
    this.instanceClass,
    this.kmsKeyId,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.networkType,
    this.performanceInsightsEnabled,
    this.performanceInsightsKmsKeyId,
    this.performanceInsightsRetentionPeriod,
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
      'clusterIdentifier': ?clusterIdentifier,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'customIamInstanceProfile': ?customIamInstanceProfile,
      'dbParameterGroupName': ?dbParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbiResourceId': ?dbiResourceId,
      'endpoint': ?endpoint,
      'engine': ?pulumi.Input.mapOptionalInputValue<EngineType, String>(engine, (value) => value.wireValue),
      'engineVersion': ?engineVersion,
      'engineVersionActual': ?engineVersionActual,
      'forceDestroy': ?forceDestroy,
      'identifier': ?identifier,
      'identifierPrefix': ?identifierPrefix,
      'instanceClass': ?instanceClass,
      'kmsKeyId': ?kmsKeyId,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'networkType': ?networkType,
      'performanceInsightsEnabled': ?performanceInsightsEnabled,
      'performanceInsightsKmsKeyId': ?performanceInsightsKmsKeyId,
      'performanceInsightsRetentionPeriod': ?performanceInsightsRetentionPeriod,
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
      applyImmediately: (() { final guardedValue = map['applyImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caCertIdentifier: (() { final guardedValue = map['caCertIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToSnapshot: (() { final guardedValue = map['copyTagsToSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customIamInstanceProfile: (() { final guardedValue = map['customIamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbParameterGroupName: (() { final guardedValue = map['dbParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSubnetGroupName: (() { final guardedValue = map['dbSubnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbiResourceId: (() { final guardedValue = map['dbiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EngineType.fromValue(guardedValue as String)); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersionActual: (() { final guardedValue = map['engineVersionActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identifierPrefix: (() { final guardedValue = map['identifierPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsEnabled: (() { final guardedValue = map['performanceInsightsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceInsightsKmsKeyId: (() { final guardedValue = map['performanceInsightsKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceInsightsRetentionPeriod: (() { final guardedValue = map['performanceInsightsRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      promotionTier: (() { final guardedValue = map['promotionTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      writer: (() { final guardedValue = map['writer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
