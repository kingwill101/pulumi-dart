// ignore_for_file: unused_element, unnecessary_cast


class GetBackupPlansPlan {
  /// The ID of the backup gateway.
  final String backupGatewayId;
  /// The Backup method.
  final String backupMethod;
  /// The backup object.
  final String backupObjects;
  /// Full backup cycle.
  final String backupPeriod;
  /// The first ID of the resource.
  final String backupPlanId;
  /// The name of the resource.
  final String backupPlanName;
  /// The retention time of backup data.
  final int backupRetentionPeriod;
  /// The start time of full Backup.
  final String backupStartTime;
  /// Built-in storage type.
  final String backupStorageType;
  /// The UID that is backed up across Alibaba cloud accounts.
  final String crossAliyunId;
  /// The name of the RAM role that is backed up across Alibaba cloud accounts.
  final String crossRoleName;
  /// The database type.
  final String databaseType;
  /// The storage time for conversion to archive cold standby is 365 days by default.
  final int duplicationArchivePeriod;
  /// The storage time is converted to low-frequency access. The default time is 180 days.
  final int duplicationInfrequentAccessPeriod;
  /// Whether to enable incremental log Backup.
  final bool enableBackupLog;
  /// The ID of the Backup Plan.
  final String id;
  /// The Instance class.
  final String instanceClass;
  /// The OSS Bucket name.
  final String ossBucketName;
  /// The payment type of the resource.
  final String paymentType;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The name of the database.
  final String sourceEndpointDatabaseName;
  /// The ID of the database instance.
  final String sourceEndpointInstanceId;
  /// The location of the database.
  final String sourceEndpointInstanceType;
  /// The region of the database.
  final String sourceEndpointRegion;
  /// The Oracle SID name.
  final String sourceEndpointSid;
  /// The source endpoint username.
  final String sourceEndpointUserName;
  /// The status of the resource.
  final String status;

  /// Creates a new [GetBackupPlansPlan].
  /// [backupGatewayId] The ID of the backup gateway.
  /// [backupMethod] The Backup method.
  /// [backupObjects] The backup object.
  /// [backupPeriod] Full backup cycle.
  /// [backupPlanId] The first ID of the resource.
  /// [backupPlanName] The name of the resource.
  /// [backupRetentionPeriod] The retention time of backup data.
  /// [backupStartTime] The start time of full Backup.
  /// [backupStorageType] Built-in storage type.
  /// [crossAliyunId] The UID that is backed up across Alibaba cloud accounts.
  /// [crossRoleName] The name of the RAM role that is backed up across Alibaba cloud accounts.
  /// [databaseType] The database type.
  /// [duplicationArchivePeriod] The storage time for conversion to archive cold standby is 365 days by default.
  /// [duplicationInfrequentAccessPeriod] The storage time is converted to low-frequency access. The default time is 180 days.
  /// [enableBackupLog] Whether to enable incremental log Backup.
  /// [id] The ID of the Backup Plan.
  /// [instanceClass] The Instance class.
  /// [ossBucketName] The OSS Bucket name.
  /// [paymentType] The payment type of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [sourceEndpointDatabaseName] The name of the database.
  /// [sourceEndpointInstanceId] The ID of the database instance.
  /// [sourceEndpointInstanceType] The location of the database.
  /// [sourceEndpointRegion] The region of the database.
  /// [sourceEndpointSid] The Oracle SID name.
  /// [sourceEndpointUserName] The source endpoint username.
  /// [status] The status of the resource.
  GetBackupPlansPlan({
    required this.backupGatewayId,
    required this.backupMethod,
    required this.backupObjects,
    required this.backupPeriod,
    required this.backupPlanId,
    required this.backupPlanName,
    required this.backupRetentionPeriod,
    required this.backupStartTime,
    required this.backupStorageType,
    required this.crossAliyunId,
    required this.crossRoleName,
    required this.databaseType,
    required this.duplicationArchivePeriod,
    required this.duplicationInfrequentAccessPeriod,
    required this.enableBackupLog,
    required this.id,
    required this.instanceClass,
    required this.ossBucketName,
    required this.paymentType,
    required this.resourceGroupId,
    required this.sourceEndpointDatabaseName,
    required this.sourceEndpointInstanceId,
    required this.sourceEndpointInstanceType,
    required this.sourceEndpointRegion,
    required this.sourceEndpointSid,
    required this.sourceEndpointUserName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGatewayId': backupGatewayId,
      'backupMethod': backupMethod,
      'backupObjects': backupObjects,
      'backupPeriod': backupPeriod,
      'backupPlanId': backupPlanId,
      'backupPlanName': backupPlanName,
      'backupRetentionPeriod': backupRetentionPeriod,
      'backupStartTime': backupStartTime,
      'backupStorageType': backupStorageType,
      'crossAliyunId': crossAliyunId,
      'crossRoleName': crossRoleName,
      'databaseType': databaseType,
      'duplicationArchivePeriod': duplicationArchivePeriod,
      'duplicationInfrequentAccessPeriod': duplicationInfrequentAccessPeriod,
      'enableBackupLog': enableBackupLog,
      'id': id,
      'instanceClass': instanceClass,
      'ossBucketName': ossBucketName,
      'paymentType': paymentType,
      'resourceGroupId': resourceGroupId,
      'sourceEndpointDatabaseName': sourceEndpointDatabaseName,
      'sourceEndpointInstanceId': sourceEndpointInstanceId,
      'sourceEndpointInstanceType': sourceEndpointInstanceType,
      'sourceEndpointRegion': sourceEndpointRegion,
      'sourceEndpointSid': sourceEndpointSid,
      'sourceEndpointUserName': sourceEndpointUserName,
      'status': status,
    };
  }

  factory GetBackupPlansPlan.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansPlan(
      backupGatewayId: map['backupGatewayId'] as String,
      backupMethod: map['backupMethod'] as String,
      backupObjects: map['backupObjects'] as String,
      backupPeriod: map['backupPeriod'] as String,
      backupPlanId: map['backupPlanId'] as String,
      backupPlanName: map['backupPlanName'] as String,
      backupRetentionPeriod: map['backupRetentionPeriod'] as int,
      backupStartTime: map['backupStartTime'] as String,
      backupStorageType: map['backupStorageType'] as String,
      crossAliyunId: map['crossAliyunId'] as String,
      crossRoleName: map['crossRoleName'] as String,
      databaseType: map['databaseType'] as String,
      duplicationArchivePeriod: map['duplicationArchivePeriod'] as int,
      duplicationInfrequentAccessPeriod: map['duplicationInfrequentAccessPeriod'] as int,
      enableBackupLog: map['enableBackupLog'] as bool,
      id: map['id'] as String,
      instanceClass: map['instanceClass'] as String,
      ossBucketName: map['ossBucketName'] as String,
      paymentType: map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      sourceEndpointDatabaseName: map['sourceEndpointDatabaseName'] as String,
      sourceEndpointInstanceId: map['sourceEndpointInstanceId'] as String,
      sourceEndpointInstanceType: map['sourceEndpointInstanceType'] as String,
      sourceEndpointRegion: map['sourceEndpointRegion'] as String,
      sourceEndpointSid: map['sourceEndpointSid'] as String,
      sourceEndpointUserName: map['sourceEndpointUserName'] as String,
      status: map['status'] as String,
    );
  }
}

