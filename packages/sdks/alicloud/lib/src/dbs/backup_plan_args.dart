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
    this.backupGatewayId,
    this.backupLogIntervalSeconds,
    required this.backupMethod,
    this.backupObjects,
    this.backupPeriod,
    required this.backupPlanName,
    this.backupRateLimit,
    this.backupRetentionPeriod,
    this.backupSpeedLimit,
    this.backupStartTime,
    this.backupStorageType,
    this.backupStrategyType,
    this.crossAliyunId,
    this.crossRoleName,
    this.databaseRegion,
    required this.databaseType,
    this.duplicationArchivePeriod,
    this.duplicationInfrequentAccessPeriod,
    this.enableBackupLog,
    required this.instanceClass,
    this.instanceType,
    this.ossBucketName,
    this.paymentType,
    this.period,
    this.resourceGroupId,
    this.sourceEndpointDatabaseName,
    this.sourceEndpointInstanceId,
    required this.sourceEndpointInstanceType,
    this.sourceEndpointIp,
    this.sourceEndpointOracleSid,
    this.sourceEndpointPassword,
    this.sourceEndpointPort,
    this.sourceEndpointRegion,
    this.sourceEndpointSid,
    this.sourceEndpointUserName,
    this.status,
    this.storageRegion,
    this.usedTime,
  });

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
      backupGatewayId: map['backupGatewayId'] == null ? null : (map['backupGatewayId'] as String).input(),
      backupLogIntervalSeconds: map['backupLogIntervalSeconds'] == null ? null : (map['backupLogIntervalSeconds'] as int).input(),
      backupMethod: (map['backupMethod'] as String).input(),
      backupObjects: map['backupObjects'] == null ? null : (map['backupObjects'] as String).input(),
      backupPeriod: map['backupPeriod'] == null ? null : (map['backupPeriod'] as String).input(),
      backupPlanName: (map['backupPlanName'] as String).input(),
      backupRateLimit: map['backupRateLimit'] == null ? null : (map['backupRateLimit'] as String).input(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      backupSpeedLimit: map['backupSpeedLimit'] == null ? null : (map['backupSpeedLimit'] as String).input(),
      backupStartTime: map['backupStartTime'] == null ? null : (map['backupStartTime'] as String).input(),
      backupStorageType: map['backupStorageType'] == null ? null : (map['backupStorageType'] as String).input(),
      backupStrategyType: map['backupStrategyType'] == null ? null : (map['backupStrategyType'] as String).input(),
      crossAliyunId: map['crossAliyunId'] == null ? null : (map['crossAliyunId'] as String).input(),
      crossRoleName: map['crossRoleName'] == null ? null : (map['crossRoleName'] as String).input(),
      databaseRegion: map['databaseRegion'] == null ? null : (map['databaseRegion'] as String).input(),
      databaseType: (map['databaseType'] as String).input(),
      duplicationArchivePeriod: map['duplicationArchivePeriod'] == null ? null : (map['duplicationArchivePeriod'] as int).input(),
      duplicationInfrequentAccessPeriod: map['duplicationInfrequentAccessPeriod'] == null ? null : (map['duplicationInfrequentAccessPeriod'] as int).input(),
      enableBackupLog: map['enableBackupLog'] == null ? null : (map['enableBackupLog'] as bool).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      ossBucketName: map['ossBucketName'] == null ? null : (map['ossBucketName'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] == null ? null : (map['sourceEndpointDatabaseName'] as String).input(),
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] == null ? null : (map['sourceEndpointInstanceId'] as String).input(),
      sourceEndpointInstanceType: (map['sourceEndpointInstanceType'] as String).input(),
      sourceEndpointIp: map['sourceEndpointIp'] == null ? null : (map['sourceEndpointIp'] as String).input(),
      sourceEndpointOracleSid: map['sourceEndpointOracleSid'] == null ? null : (map['sourceEndpointOracleSid'] as String).input(),
      sourceEndpointPassword: map['sourceEndpointPassword'] == null ? null : (map['sourceEndpointPassword'] as String).input(),
      sourceEndpointPort: map['sourceEndpointPort'] == null ? null : (map['sourceEndpointPort'] as int).input(),
      sourceEndpointRegion: map['sourceEndpointRegion'] == null ? null : (map['sourceEndpointRegion'] as String).input(),
      sourceEndpointSid: map['sourceEndpointSid'] == null ? null : (map['sourceEndpointSid'] as String).input(),
      sourceEndpointUserName: map['sourceEndpointUserName'] == null ? null : (map['sourceEndpointUserName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storageRegion: map['storageRegion'] == null ? null : (map['storageRegion'] as String).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as int).input(),
    );
  }
}

