// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_type.dart';

/// Input properties used for looking up and filtering ClusterInstance resources.
class ClusterInstanceState {
  /// Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  final pulumi.Input<bool>? applyImmediately;
  /// Amazon Resource Name (ARN) of cluster instance
  final pulumi.Input<String>? arn;
  /// Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  final pulumi.Input<bool>? autoMinorVersionUpgrade;
  /// EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  final pulumi.Input<String>? availabilityZone;
  /// Identifier of the CA certificate for the DB instance.
  final pulumi.Input<String>? caCertIdentifier;
  /// Identifier of the `aws.rds.Cluster` in which to launch this instance.
  final pulumi.Input<String>? clusterIdentifier;
  /// Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  final pulumi.Input<bool>? copyTagsToSnapshot;
  /// Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  final pulumi.Input<String>? customIamInstanceProfile;
  /// Name of the DB parameter group to associate with this instance.
  final pulumi.Input<String>? dbParameterGroupName;
  /// Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `db_subnet_group_name` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `db_subnet_group_name` and `publicly_accessible` parameters affect DB instance behaviour. **NOTE:** This must match the `db_subnet_group_name` of the attached `aws.rds.Cluster`.
  final pulumi.Input<String>? dbSubnetGroupName;
  /// Region-unique, immutable identifier for the DB instance.
  final pulumi.Input<String>? dbiResourceId;
  /// DNS address for this instance. May not be writable
  final pulumi.Input<String>? endpoint;
  /// Name of the database engine to be used for the RDS cluster instance.
  /// Valid Values: `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`.(Note that `mysql` and `postgres` are Multi-AZ RDS clusters).
  final pulumi.Input<EngineType>? engine;
  /// Database engine version. Please note that to upgrade the `engine_version` of the instance, it must be done on the `aws.rds.Cluster` `engine_version`. Trying to upgrade in `aws_cluster_instance` will not update the `engine_version`.
  final pulumi.Input<String>? engineVersion;
  /// Database engine version
  final pulumi.Input<String>? engineVersionActual;
  /// Forces an instance to be destroyed when a part of a read replica cluster. **Note:** will promote the read replica to a standalone cluster before instance deletion.
  final pulumi.Input<bool>? forceDestroy;
  /// Identifier for the RDS instance, if omitted, Pulumi will assign a random, unique identifier.
  final pulumi.Input<String>? identifier;
  /// Creates a unique identifier beginning with the specified prefix. Conflicts with `identifier`.
  final pulumi.Input<String>? identifierPrefix;
  /// Instance class to use. For details on CPU and memory, see [Scaling Aurora DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Managing.html). Aurora uses `db.*` instance classes/types. Please see [AWS Documentation](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html) for currently available instance classes and complete details. For Aurora Serverless v2 use `db.serverless`.
  final pulumi.Input<String>? instanceClass;
  /// ARN for the KMS encryption key if one is set to the cluster.
  final pulumi.Input<String>? kmsKeyId;
  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60.
  final pulumi.Input<int>? monitoringInterval;
  /// ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. You can find more information on the [AWS Documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html) what IAM permissions are needed to allow Enhanced Monitoring for RDS Instances.
  final pulumi.Input<String>? monitoringRoleArn;
  /// Network type of the DB instance.
  final pulumi.Input<String>? networkType;
  /// Specifies whether Performance Insights is enabled or not. **NOTE:** When Performance Insights is configured at the cluster level through `aws.rds.Cluster`, this argument cannot be set to a value that conflicts with the cluster's configuration.
  final pulumi.Input<bool>? performanceInsightsEnabled;
  /// ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true.
  final pulumi.Input<String>? performanceInsightsKmsKeyId;
  /// Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  final pulumi.Input<int>? performanceInsightsRetentionPeriod;
  /// Database port
  final pulumi.Input<int>? port;
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
  /// Specifies whether the DB cluster is encrypted.
  final pulumi.Input<bool>? storageEncrypted;
  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html).
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  final pulumi.Input<bool>? writer;

  /// Creates a new [ClusterInstanceState].
  /// [applyImmediately] Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is`false`.
  /// [arn] Amazon Resource Name (ARN) of cluster instance
  /// [autoMinorVersionUpgrade] Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default `true`.
  /// [availabilityZone] EC2 Availability Zone that the DB instance is created in. See [docs](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) about the details.
  /// [caCertIdentifier] Identifier of the CA certificate for the DB instance.
  /// [clusterIdentifier] Identifier of the `aws.rds.Cluster` in which to launch this instance.
  /// [copyTagsToSnapshot] Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default `false`.
  /// [customIamInstanceProfile] Instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance.
  /// [dbParameterGroupName] Name of the DB parameter group to associate with this instance.
  /// [dbSubnetGroupName] Specifies the DB subnet group to associate with this DB instance. The default behavior varies depending on whether `db_subnet_group_name` is specified. Please refer to official [AWS documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html) to understand how `db_subnet_group_name` and `publicly_accessible` parameters affect DB instance behaviour. **NOTE:** This must match the `db_subnet_group_name` of the attached `aws.rds.Cluster`.
  /// [dbiResourceId] Region-unique, immutable identifier for the DB instance.
  /// [endpoint] DNS address for this instance. May not be writable
  /// [engine] Name of the database engine to be used for the RDS cluster instance.
  /// [engineVersion] Database engine version. Please note that to upgrade the `engine_version` of the instance, it must be done on the `aws.rds.Cluster` `engine_version`. Trying to upgrade in `aws_cluster_instance` will not update the `engine_version`.
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
  /// [performanceInsightsKmsKeyId] ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to true.
  /// [performanceInsightsRetentionPeriod] Amount of time in days to retain Performance Insights data. Valid values are `7`, `731` (2 years) or a multiple of `31`. When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to '7'.
  /// [port] Database port
  /// [preferredBackupWindow] Daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00". **NOTE:** If `preferred_backup_window` is set at the cluster level, this argument **must** be omitted.
  /// [preferredMaintenanceWindow] Window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".
  /// [promotionTier] Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer.
  /// [publiclyAccessible] Bool to control if instance is publicly accessible. Default `false`. See the documentation on [Creating DB Instances](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html) for more details on controlling this property.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageEncrypted] Specifies whether the DB cluster is encrypted.
  /// [tags] Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [writer] Boolean indicating if this instance is writable. `False` indicates this instance is a read replica.
  ClusterInstanceState({
    pulumi.Output<bool>? applyImmediately,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoMinorVersionUpgrade,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? caCertIdentifier,
    pulumi.Output<String>? clusterIdentifier,
    pulumi.Output<bool>? copyTagsToSnapshot,
    pulumi.Output<String>? customIamInstanceProfile,
    pulumi.Output<String>? dbParameterGroupName,
    pulumi.Output<String>? dbSubnetGroupName,
    pulumi.Output<String>? dbiResourceId,
    pulumi.Output<String>? endpoint,
    pulumi.Output<EngineType>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? engineVersionActual,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? identifierPrefix,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<int>? monitoringInterval,
    pulumi.Output<String>? monitoringRoleArn,
    pulumi.Output<String>? networkType,
    pulumi.Output<bool>? performanceInsightsEnabled,
    pulumi.Output<String>? performanceInsightsKmsKeyId,
    pulumi.Output<int>? performanceInsightsRetentionPeriod,
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
      clusterIdentifier = pulumi.Input.asOptionalInput<String>(clusterIdentifier),
      copyTagsToSnapshot = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshot),
      customIamInstanceProfile = pulumi.Input.asOptionalInput<String>(customIamInstanceProfile),
      dbParameterGroupName = pulumi.Input.asOptionalInput<String>(dbParameterGroupName),
      dbSubnetGroupName = pulumi.Input.asOptionalInput<String>(dbSubnetGroupName),
      dbiResourceId = pulumi.Input.asOptionalInput<String>(dbiResourceId),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      engine = pulumi.Input.asOptionalInput<EngineType>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      engineVersionActual = pulumi.Input.asOptionalInput<String>(engineVersionActual),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      identifierPrefix = pulumi.Input.asOptionalInput<String>(identifierPrefix),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      monitoringInterval = pulumi.Input.asOptionalInput<int>(monitoringInterval),
      monitoringRoleArn = pulumi.Input.asOptionalInput<String>(monitoringRoleArn),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      performanceInsightsEnabled = pulumi.Input.asOptionalInput<bool>(performanceInsightsEnabled),
      performanceInsightsKmsKeyId = pulumi.Input.asOptionalInput<String>(performanceInsightsKmsKeyId),
      performanceInsightsRetentionPeriod = pulumi.Input.asOptionalInput<int>(performanceInsightsRetentionPeriod),
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
      'clusterIdentifier': ?clusterIdentifier,
      'copyTagsToSnapshot': ?copyTagsToSnapshot,
      'customIamInstanceProfile': ?customIamInstanceProfile,
      'dbParameterGroupName': ?dbParameterGroupName,
      'dbSubnetGroupName': ?dbSubnetGroupName,
      'dbiResourceId': ?dbiResourceId,
      'endpoint': ?endpoint,
      'engine': ?pulumi.Input.mapOptionalInputValue<EngineType, String>(engine, (value) => value.value),
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
      applyImmediately: map['applyImmediately'] == null ? null : pulumi.Output.create<bool>(map['applyImmediately'] as bool),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoMinorVersionUpgrade'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      caCertIdentifier: map['caCertIdentifier'] == null ? null : pulumi.Output.create<String>(map['caCertIdentifier'] as String),
      clusterIdentifier: map['clusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      copyTagsToSnapshot: map['copyTagsToSnapshot'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshot'] as bool),
      customIamInstanceProfile: map['customIamInstanceProfile'] == null ? null : pulumi.Output.create<String>(map['customIamInstanceProfile'] as String),
      dbParameterGroupName: map['dbParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['dbParameterGroupName'] as String),
      dbSubnetGroupName: map['dbSubnetGroupName'] == null ? null : pulumi.Output.create<String>(map['dbSubnetGroupName'] as String),
      dbiResourceId: map['dbiResourceId'] == null ? null : pulumi.Output.create<String>(map['dbiResourceId'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<EngineType>(EngineType.fromValue(map['engine'] as String)),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      engineVersionActual: map['engineVersionActual'] == null ? null : pulumi.Output.create<String>(map['engineVersionActual'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      identifierPrefix: map['identifierPrefix'] == null ? null : pulumi.Output.create<String>(map['identifierPrefix'] as String),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      monitoringInterval: map['monitoringInterval'] == null ? null : pulumi.Output.create<int>(map['monitoringInterval'] as int),
      monitoringRoleArn: map['monitoringRoleArn'] == null ? null : pulumi.Output.create<String>(map['monitoringRoleArn'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      performanceInsightsEnabled: map['performanceInsightsEnabled'] == null ? null : pulumi.Output.create<bool>(map['performanceInsightsEnabled'] as bool),
      performanceInsightsKmsKeyId: map['performanceInsightsKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['performanceInsightsKmsKeyId'] as String),
      performanceInsightsRetentionPeriod: map['performanceInsightsRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['performanceInsightsRetentionPeriod'] as int),
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

