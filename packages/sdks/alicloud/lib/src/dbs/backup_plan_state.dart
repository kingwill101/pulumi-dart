// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupPlan resources.
class BackupPlanState {
  /// The ID of the backup gateway. This parameter is required when the `source_endpoint_instance_type` is `Agent`.
  final pulumi.Input<String>? backupGatewayId;
  /// The backup log interval seconds.
  final pulumi.Input<int>? backupLogIntervalSeconds;
  /// Backup method. Valid values: `duplication`, `logical`, `physical`.
  final pulumi.Input<String>? backupMethod;
  /// The backup object.
  final pulumi.Input<String>? backupObjects;
  /// Full backup cycle, Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`. supports the selection of multiple fetch values, separated by English commas (,).
  final pulumi.Input<String>? backupPeriod;
  /// The name of the resource.
  final pulumi.Input<String>? backupPlanName;
  /// The backup rate limit.
  final pulumi.Input<String>? backupRateLimit;
  /// The retention time of backup data. Valid values: 0 to 1825. Default value: 730 days.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The backup speed limit.
  final pulumi.Input<String>? backupSpeedLimit;
  /// The start time of full Backup. The format is `&lt;I&gt; HH:mm&lt;/I&gt;` Z(UTC time).
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
  final pulumi.Input<String>? databaseType;
  /// The storage time for conversion to archive cold standby is 365 days by default.
  final pulumi.Input<int>? duplicationArchivePeriod;
  /// The storage time is converted to low-frequency access. The default time is 180 days.
  final pulumi.Input<int>? duplicationInfrequentAccessPeriod;
  /// Whether to enable incremental log Backup.
  final pulumi.Input<bool>? enableBackupLog;
  /// The instance class. Valid values: `large`, `medium`, `micro`, `small`, `xlarge`.
  final pulumi.Input<String>? instanceClass;
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
  final pulumi.Input<String>? sourceEndpointInstanceType;
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

  /// Creates a new [BackupPlanState].
  /// [backupGatewayId] The ID of the backup gateway. This parameter is required when the `source_endpoint_instance_type` is `Agent`.
  /// [backupLogIntervalSeconds] The backup log interval seconds.
  /// [backupMethod] Backup method. Valid values: `duplication`, `logical`, `physical`.
  /// [backupObjects] The backup object.
  /// [backupPeriod] Full backup cycle, Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`. supports the selection of multiple fetch values, separated by English commas (,).
  /// [backupPlanName] The name of the resource.
  /// [backupRateLimit] The backup rate limit.
  /// [backupRetentionPeriod] The retention time of backup data. Valid values: 0 to 1825. Default value: 730 days.
  /// [backupSpeedLimit] The backup speed limit.
  /// [backupStartTime] The start time of full Backup. The format is `&lt;I&gt; HH:mm&lt;/I&gt;` Z(UTC time).
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
  const BackupPlanState({
    this.backupGatewayId,
    this.backupLogIntervalSeconds,
    this.backupMethod,
    this.backupObjects,
    this.backupPeriod,
    this.backupPlanName,
    this.backupRateLimit,
    this.backupRetentionPeriod,
    this.backupSpeedLimit,
    this.backupStartTime,
    this.backupStorageType,
    this.backupStrategyType,
    this.crossAliyunId,
    this.crossRoleName,
    this.databaseRegion,
    this.databaseType,
    this.duplicationArchivePeriod,
    this.duplicationInfrequentAccessPeriod,
    this.enableBackupLog,
    this.instanceClass,
    this.instanceType,
    this.ossBucketName,
    this.paymentType,
    this.period,
    this.resourceGroupId,
    this.sourceEndpointDatabaseName,
    this.sourceEndpointInstanceId,
    this.sourceEndpointInstanceType,
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
      'backupMethod': ?backupMethod,
      'backupObjects': ?backupObjects,
      'backupPeriod': ?backupPeriod,
      'backupPlanName': ?backupPlanName,
      'backupRateLimit': ?backupRateLimit,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupSpeedLimit': ?backupSpeedLimit,
      'backupStartTime': ?backupStartTime,
      'backupStorageType': ?backupStorageType,
      'backupStrategyType': ?backupStrategyType,
      'crossAliyunId': ?crossAliyunId,
      'crossRoleName': ?crossRoleName,
      'databaseRegion': ?databaseRegion,
      'databaseType': ?databaseType,
      'duplicationArchivePeriod': ?duplicationArchivePeriod,
      'duplicationInfrequentAccessPeriod': ?duplicationInfrequentAccessPeriod,
      'enableBackupLog': ?enableBackupLog,
      'instanceClass': ?instanceClass,
      'instanceType': ?instanceType,
      'ossBucketName': ?ossBucketName,
      'paymentType': ?paymentType,
      'period': ?period,
      'resourceGroupId': ?resourceGroupId,
      'sourceEndpointDatabaseName': ?sourceEndpointDatabaseName,
      'sourceEndpointInstanceId': ?sourceEndpointInstanceId,
      'sourceEndpointInstanceType': ?sourceEndpointInstanceType,
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

  factory BackupPlanState.fromMap(Map<String, dynamic> map) {
    return BackupPlanState(
      backupGatewayId: (() { final guardedValue = map['backupGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupLogIntervalSeconds: (() { final guardedValue = map['backupLogIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupMethod: (() { final guardedValue = map['backupMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupObjects: (() { final guardedValue = map['backupObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupPeriod: (() { final guardedValue = map['backupPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupPlanName: (() { final guardedValue = map['backupPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRateLimit: (() { final guardedValue = map['backupRateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupSpeedLimit: (() { final guardedValue = map['backupSpeedLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupStartTime: (() { final guardedValue = map['backupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupStorageType: (() { final guardedValue = map['backupStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupStrategyType: (() { final guardedValue = map['backupStrategyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossAliyunId: (() { final guardedValue = map['crossAliyunId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crossRoleName: (() { final guardedValue = map['crossRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseRegion: (() { final guardedValue = map['databaseRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duplicationArchivePeriod: (() { final guardedValue = map['duplicationArchivePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duplicationInfrequentAccessPeriod: (() { final guardedValue = map['duplicationInfrequentAccessPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableBackupLog: (() { final guardedValue = map['enableBackupLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceClass: (() { final guardedValue = map['instanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ossBucketName: (() { final guardedValue = map['ossBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointDatabaseName: (() { final guardedValue = map['sourceEndpointDatabaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointInstanceId: (() { final guardedValue = map['sourceEndpointInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointInstanceType: (() { final guardedValue = map['sourceEndpointInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointIp: (() { final guardedValue = map['sourceEndpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointOracleSid: (() { final guardedValue = map['sourceEndpointOracleSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointPassword: (() { final guardedValue = map['sourceEndpointPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointPort: (() { final guardedValue = map['sourceEndpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceEndpointRegion: (() { final guardedValue = map['sourceEndpointRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointSid: (() { final guardedValue = map['sourceEndpointSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndpointUserName: (() { final guardedValue = map['sourceEndpointUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageRegion: (() { final guardedValue = map['storageRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usedTime: (() { final guardedValue = map['usedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

