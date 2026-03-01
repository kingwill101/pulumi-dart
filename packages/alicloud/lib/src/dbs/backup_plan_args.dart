// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbs_backup_plan_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_dbs_backup_plan_backup_plan_args_doc}
class BackupPlanArgs {
  /// The ID of the backup gateway. This parameter is required when the `source_endpoint_instance_type` is `Agent`.
  final pulumi.Input<String>? backupGatewayId;
  /// The backup log interval seconds.
  final pulumi.Input<int>? backupLogIntervalSeconds;
  /// Backup method. Valid values: `duplication`, `logical`, `physical`.
  final pulumi.Input<String> backupMethod;
  /// The backup object.
  final pulumi.Input<String>? backupObjects;
  /// Full backup cycle, Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`. supports the selection of multiple fetch values, separated by English commas (,).
  final pulumi.Input<String>? backupPeriod;
  /// The name of the resource.
  final pulumi.Input<String> backupPlanName;
  /// The backup rate limit.
  final pulumi.Input<String>? backupRateLimit;
  /// The retention time of backup data. Valid values: 0 to 1825. Default value: 730 days.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The backup speed limit.
  final pulumi.Input<String>? backupSpeedLimit;
  /// The start time of full Backup. The format is `<I> HH:mm</I>` Z(UTC time).
  final pulumi.Input<String>? backupStartTime;
  /// Built-in storage type, Valid values: `system`.
  final pulumi.Input<String>? backupStorageType;
  /// The backup strategy type. Valid values: `simple`, `manual`.
  final pulumi.Input<String>? backupStrategyType;
  /// The UID that is backed up across Alibaba cloud accounts.
  final pulumi.Input<String>? crossAliyunId;
  /// The name of the RAM role that is backed up across Alibaba cloud accounts.
  final pulumi.Input<String>? crossRoleName;
  /// The database region.
  final pulumi.Input<String>? databaseRegion;
  /// Database type. Valid values: `DRDS`, `FIle`, `MSSQL`, `MariaDB`, `MongoDB`, `MySQL`, `Oracle`, `PPAS`, `PostgreSQL`, `Redis`.
  final pulumi.Input<String> databaseType;
  /// The storage time for conversion to archive cold standby is 365 days by default.
  final pulumi.Input<int>? duplicationArchivePeriod;
  /// The storage time is converted to low-frequency access. The default time is 180 days.
  final pulumi.Input<int>? duplicationInfrequentAccessPeriod;
  /// Whether to enable incremental log Backup.
  final pulumi.Input<bool>? enableBackupLog;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`.
  final pulumi.Input<String> instanceClass;
  /// The instance type. Valid values: `RDS`, `PolarDB`, `DDS`, `Kvstore`, `Other`.
  final pulumi.Input<String>? instanceType;
  /// The OSS Bucket name. The system automatically generates a new name by default.
  final pulumi.Input<String>? ossBucketName;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// Specify that the prepaid instance is of the package year or monthly type. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? period;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the database. This parameter is required when the `database_type` is `PostgreSQL` or `MongoDB`.
  final pulumi.Input<String>? sourceEndpointDatabaseName;
  /// The ID of the database instance. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, or `Express`.
  final pulumi.Input<String>? sourceEndpointInstanceId;
  /// The location of the database. Valid values: `RDS`, `ECS`, `Express`, `Agent`, `DDS`, `Other`.
  final pulumi.Input<String> sourceEndpointInstanceType;
  /// The source endpoint ip.
  final pulumi.Input<String>? sourceEndpointIp;
  /// Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  final pulumi.Input<String>? sourceEndpointOracleSid;
  /// The source endpoint password.  This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  final pulumi.Input<String>? sourceEndpointPassword;
  /// The source endpoint port.
  final pulumi.Input<int>? sourceEndpointPort;
  /// The region of the database. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, `Express`, or `Agent`.
  final pulumi.Input<String>? sourceEndpointRegion;
  /// Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  final pulumi.Input<String>? sourceEndpointSid;
  /// The source endpoint username. This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  final pulumi.Input<String>? sourceEndpointUserName;
  /// The status of the resource. Valid values: `pause`, `running`.
  final pulumi.Input<String>? status;
  /// The storage region.
  final pulumi.Input<String>? storageRegion;
  /// Specify purchase duration. When the parameter `period` is `Year`, the `used_time` value is 1 to 9. When the parameter `period` is `Month`, the `used_time` value is 1 to 11.
  final pulumi.Input<int>? usedTime;

  /// Creates a new [BackupPlanArgs].
  /// [backupGatewayId] The ID of the backup gateway. This parameter is required when the `source_endpoint_instance_type` is `Agent`.
  /// [backupLogIntervalSeconds] The backup log interval seconds.
  /// [backupMethod] Backup method. Valid values: `duplication`, `logical`, `physical`.
  /// [backupObjects] The backup object.
  /// [backupPeriod] Full backup cycle, Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`. supports the selection of multiple fetch values, separated by English commas (,).
  /// [backupPlanName] The name of the resource.
  /// [backupRateLimit] The backup rate limit.
  /// [backupRetentionPeriod] The retention time of backup data. Valid values: 0 to 1825. Default value: 730 days.
  /// [backupSpeedLimit] The backup speed limit.
  /// [backupStartTime] The start time of full Backup. The format is `<I> HH:mm</I>` Z(UTC time).
  /// [backupStorageType] Built-in storage type, Valid values: `system`.
  /// [backupStrategyType] The backup strategy type. Valid values: `simple`, `manual`.
  /// [crossAliyunId] The UID that is backed up across Alibaba cloud accounts.
  /// [crossRoleName] The name of the RAM role that is backed up across Alibaba cloud accounts.
  /// [databaseRegion] The database region.
  /// [databaseType] Database type. Valid values: `DRDS`, `FIle`, `MSSQL`, `MariaDB`, `MongoDB`, `MySQL`, `Oracle`, `PPAS`, `PostgreSQL`, `Redis`.
  /// [duplicationArchivePeriod] The storage time for conversion to archive cold standby is 365 days by default.
  /// [duplicationInfrequentAccessPeriod] The storage time is converted to low-frequency access. The default time is 180 days.
  /// [enableBackupLog] Whether to enable incremental log Backup.
  /// [instanceClass] The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`.
  /// [instanceType] The instance type. Valid values: `RDS`, `PolarDB`, `DDS`, `Kvstore`, `Other`.
  /// [ossBucketName] The OSS Bucket name. The system automatically generates a new name by default.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  /// [period] Specify that the prepaid instance is of the package year or monthly type. Valid values: `Month`, `Year`.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceEndpointDatabaseName] The name of the database. This parameter is required when the `database_type` is `PostgreSQL` or `MongoDB`.
  /// [sourceEndpointInstanceId] The ID of the database instance. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, or `Express`.
  /// [sourceEndpointInstanceType] The location of the database. Valid values: `RDS`, `ECS`, `Express`, `Agent`, `DDS`, `Other`.
  /// [sourceEndpointIp] The source endpoint ip.
  /// [sourceEndpointOracleSid] Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  /// [sourceEndpointPassword] The source endpoint password.  This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  /// [sourceEndpointPort] The source endpoint port.
  /// [sourceEndpointRegion] The region of the database. This parameter is required when the `source_endpoint_instance_type` is `RDS`, `ECS`, `DDS`, `Express`, or `Agent`.
  /// [sourceEndpointSid] Oracle SID name. This parameter is required when the `database_type` is `Oracle`.
  /// [sourceEndpointUserName] The source endpoint username. This parameter is not required when the `database_type` is `Redis`, or when the `source_endpoint_instance_type` is `Agent` and the `database_type` is `MSSQL`. This parameter is required in other scenarios.
  /// [status] The status of the resource. Valid values: `pause`, `running`.
  /// [storageRegion] The storage region.
  /// [usedTime] Specify purchase duration. When the parameter `period` is `Year`, the `used_time` value is 1 to 9. When the parameter `period` is `Month`, the `used_time` value is 1 to 11.
  BackupPlanArgs({
    String? backupGatewayId,
    int? backupLogIntervalSeconds,
    required String backupMethod,
    String? backupObjects,
    String? backupPeriod,
    required String backupPlanName,
    String? backupRateLimit,
    int? backupRetentionPeriod,
    String? backupSpeedLimit,
    String? backupStartTime,
    String? backupStorageType,
    String? backupStrategyType,
    String? crossAliyunId,
    String? crossRoleName,
    String? databaseRegion,
    required String databaseType,
    int? duplicationArchivePeriod,
    int? duplicationInfrequentAccessPeriod,
    bool? enableBackupLog,
    required String instanceClass,
    String? instanceType,
    String? ossBucketName,
    String? paymentType,
    String? period,
    String? resourceGroupId,
    String? sourceEndpointDatabaseName,
    String? sourceEndpointInstanceId,
    required String sourceEndpointInstanceType,
    String? sourceEndpointIp,
    String? sourceEndpointOracleSid,
    String? sourceEndpointPassword,
    int? sourceEndpointPort,
    String? sourceEndpointRegion,
    String? sourceEndpointSid,
    String? sourceEndpointUserName,
    String? status,
    String? storageRegion,
    int? usedTime,
  }) :
      backupGatewayId = pulumi.Input.asOptionalInput<String>(backupGatewayId),
      backupLogIntervalSeconds = pulumi.Input.asOptionalInput<int>(backupLogIntervalSeconds),
      backupMethod = pulumi.Input.asInput<String>(backupMethod),
      backupObjects = pulumi.Input.asOptionalInput<String>(backupObjects),
      backupPeriod = pulumi.Input.asOptionalInput<String>(backupPeriod),
      backupPlanName = pulumi.Input.asInput<String>(backupPlanName),
      backupRateLimit = pulumi.Input.asOptionalInput<String>(backupRateLimit),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      backupSpeedLimit = pulumi.Input.asOptionalInput<String>(backupSpeedLimit),
      backupStartTime = pulumi.Input.asOptionalInput<String>(backupStartTime),
      backupStorageType = pulumi.Input.asOptionalInput<String>(backupStorageType),
      backupStrategyType = pulumi.Input.asOptionalInput<String>(backupStrategyType),
      crossAliyunId = pulumi.Input.asOptionalInput<String>(crossAliyunId),
      crossRoleName = pulumi.Input.asOptionalInput<String>(crossRoleName),
      databaseRegion = pulumi.Input.asOptionalInput<String>(databaseRegion),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      duplicationArchivePeriod = pulumi.Input.asOptionalInput<int>(duplicationArchivePeriod),
      duplicationInfrequentAccessPeriod = pulumi.Input.asOptionalInput<int>(duplicationInfrequentAccessPeriod),
      enableBackupLog = pulumi.Input.asOptionalInput<bool>(enableBackupLog),
      instanceClass = pulumi.Input.asInput<String>(instanceClass),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ossBucketName = pulumi.Input.asOptionalInput<String>(ossBucketName),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<String>(period),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sourceEndpointDatabaseName = pulumi.Input.asOptionalInput<String>(sourceEndpointDatabaseName),
      sourceEndpointInstanceId = pulumi.Input.asOptionalInput<String>(sourceEndpointInstanceId),
      sourceEndpointInstanceType = pulumi.Input.asInput<String>(sourceEndpointInstanceType),
      sourceEndpointIp = pulumi.Input.asOptionalInput<String>(sourceEndpointIp),
      sourceEndpointOracleSid = pulumi.Input.asOptionalInput<String>(sourceEndpointOracleSid),
      sourceEndpointPassword = pulumi.Input.asOptionalInput<String>(sourceEndpointPassword),
      sourceEndpointPort = pulumi.Input.asOptionalInput<int>(sourceEndpointPort),
      sourceEndpointRegion = pulumi.Input.asOptionalInput<String>(sourceEndpointRegion),
      sourceEndpointSid = pulumi.Input.asOptionalInput<String>(sourceEndpointSid),
      sourceEndpointUserName = pulumi.Input.asOptionalInput<String>(sourceEndpointUserName),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageRegion = pulumi.Input.asOptionalInput<String>(storageRegion),
      usedTime = pulumi.Input.asOptionalInput<int>(usedTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGatewayId': ?backupGatewayId,
      'backupLogIntervalSeconds': ?backupLogIntervalSeconds,
      'backupMethod': backupMethod,
      'backupObjects': ?backupObjects,
      'backupPeriod': ?backupPeriod,
      'backupPlanName': backupPlanName,
      'backupRateLimit': ?backupRateLimit,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupSpeedLimit': ?backupSpeedLimit,
      'backupStartTime': ?backupStartTime,
      'backupStorageType': ?backupStorageType,
      'backupStrategyType': ?backupStrategyType,
      'crossAliyunId': ?crossAliyunId,
      'crossRoleName': ?crossRoleName,
      'databaseRegion': ?databaseRegion,
      'databaseType': databaseType,
      'duplicationArchivePeriod': ?duplicationArchivePeriod,
      'duplicationInfrequentAccessPeriod': ?duplicationInfrequentAccessPeriod,
      'enableBackupLog': ?enableBackupLog,
      'instanceClass': instanceClass,
      'instanceType': ?instanceType,
      'ossBucketName': ?ossBucketName,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'sourceEndpointDatabaseName': ?sourceEndpointDatabaseName,
      'sourceEndpointInstanceId': ?sourceEndpointInstanceId,
      'sourceEndpointInstanceType': sourceEndpointInstanceType,
      'sourceEndpointIp': ?sourceEndpointIp,
      'sourceEndpointOracleSid': ?sourceEndpointOracleSid,
      'sourceEndpointPassword': ?sourceEndpointPassword,
      'sourceEndpointPort': ?sourceEndpointPort,
      'sourceEndpointRegion': ?sourceEndpointRegion,
      'sourceEndpointSid': ?sourceEndpointSid,
      'sourceEndpointUserName': ?sourceEndpointUserName,
      'status': ?status,
      'storageRegion': ?storageRegion,
      'usedTime': ?usedTime,
    };
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupGatewayId: map['backupGatewayId'] == null ? null : map['backupGatewayId'] as String,
      backupLogIntervalSeconds: map['backupLogIntervalSeconds'] == null ? null : map['backupLogIntervalSeconds'] as int,
      backupMethod: map['backupMethod'] as String,
      backupObjects: map['backupObjects'] == null ? null : map['backupObjects'] as String,
      backupPeriod: map['backupPeriod'] == null ? null : map['backupPeriod'] as String,
      backupPlanName: map['backupPlanName'] as String,
      backupRateLimit: map['backupRateLimit'] == null ? null : map['backupRateLimit'] as String,
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : map['backupRetentionPeriod'] as int,
      backupSpeedLimit: map['backupSpeedLimit'] == null ? null : map['backupSpeedLimit'] as String,
      backupStartTime: map['backupStartTime'] == null ? null : map['backupStartTime'] as String,
      backupStorageType: map['backupStorageType'] == null ? null : map['backupStorageType'] as String,
      backupStrategyType: map['backupStrategyType'] == null ? null : map['backupStrategyType'] as String,
      crossAliyunId: map['crossAliyunId'] == null ? null : map['crossAliyunId'] as String,
      crossRoleName: map['crossRoleName'] == null ? null : map['crossRoleName'] as String,
      databaseRegion: map['databaseRegion'] == null ? null : map['databaseRegion'] as String,
      databaseType: map['databaseType'] as String,
      duplicationArchivePeriod: map['duplicationArchivePeriod'] == null ? null : map['duplicationArchivePeriod'] as int,
      duplicationInfrequentAccessPeriod: map['duplicationInfrequentAccessPeriod'] == null ? null : map['duplicationInfrequentAccessPeriod'] as int,
      enableBackupLog: map['enableBackupLog'] == null ? null : map['enableBackupLog'] as bool,
      instanceClass: map['instanceClass'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      ossBucketName: map['ossBucketName'] == null ? null : map['ossBucketName'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : map['sourceEndpointDatabaseName'] as String,
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : map['sourceEndpointInstanceId'] as String,
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] as String,
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : map['sourceEndpointIp'] as String,
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : map['sourceEndpointOracleSid'] as String,
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : map['sourceEndpointPassword'] as String,
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : map['sourceEndpointPort'] as int,
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : map['sourceEndpointRegion'] as String,
      sourceEndpointSid: map['sourceEndpointSid'] == null ? null : map['sourceEndpointSid'] as String,
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : map['sourceEndpointUserName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      storageRegion: map['storageRegion'] == null ? null : map['storageRegion'] as String,
      usedTime: map['usedTime'] == null ? null : map['usedTime'] as int,
    );
  }
}

