// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupPlansPlan {
  /// The ID of the backup gateway.
  final pulumi.Input<String> backupGatewayId;
  /// The Backup method.
  final pulumi.Input<String> backupMethod;
  /// The backup object.
  final pulumi.Input<String> backupObjects;
  /// Full backup cycle.
  final pulumi.Input<String> backupPeriod;
  /// The first ID of the resource.
  final pulumi.Input<String> backupPlanId;
  /// The name of the resource.
  final pulumi.Input<String> backupPlanName;
  /// The retention time of backup data.
  final pulumi.Input<int> backupRetentionPeriod;
  /// The start time of full Backup.
  final pulumi.Input<String> backupStartTime;
  /// Built-in storage type.
  final pulumi.Input<String> backupStorageType;
  /// The UID that is backed up across Alibaba cloud accounts.
  final pulumi.Input<String> crossAliyunId;
  /// The name of the RAM role that is backed up across Alibaba cloud accounts.
  final pulumi.Input<String> crossRoleName;
  /// The database type.
  final pulumi.Input<String> databaseType;
  /// The storage time for conversion to archive cold standby is 365 days by default.
  final pulumi.Input<int> duplicationArchivePeriod;
  /// The storage time is converted to low-frequency access. The default time is 180 days.
  final pulumi.Input<int> duplicationInfrequentAccessPeriod;
  /// Whether to enable incremental log Backup.
  final pulumi.Input<bool> enableBackupLog;
  /// The ID of the Backup Plan.
  final pulumi.Input<String> id;
  /// The Instance class.
  final pulumi.Input<String> instanceClass;
  /// The OSS Bucket name.
  final pulumi.Input<String> ossBucketName;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The name of the database.
  final pulumi.Input<String> sourceEndpointDatabaseName;
  /// The ID of the database instance.
  final pulumi.Input<String> sourceEndpointInstanceId;
  /// The location of the database.
  final pulumi.Input<String> sourceEndpointInstanceType;
  /// The region of the database.
  final pulumi.Input<String> sourceEndpointRegion;
  /// The Oracle SID name.
  final pulumi.Input<String> sourceEndpointSid;
  /// The source endpoint username.
  final pulumi.Input<String> sourceEndpointUserName;
  /// The status of the resource.
  final pulumi.Input<String> status;

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
      backupGatewayId: (map['backupGatewayId'] as String).input(),
      backupMethod: (map['backupMethod'] as String).input(),
      backupObjects: (map['backupObjects'] as String).input(),
      backupPeriod: (map['backupPeriod'] as String).input(),
      backupPlanId: (map['backupPlanId'] as String).input(),
      backupPlanName: (map['backupPlanName'] as String).input(),
      backupRetentionPeriod: (map['backupRetentionPeriod'] as int).input(),
      backupStartTime: (map['backupStartTime'] as String).input(),
      backupStorageType: (map['backupStorageType'] as String).input(),
      crossAliyunId: (map['crossAliyunId'] as String).input(),
      crossRoleName: (map['crossRoleName'] as String).input(),
      databaseType: (map['databaseType'] as String).input(),
      duplicationArchivePeriod: (map['duplicationArchivePeriod'] as int).input(),
      duplicationInfrequentAccessPeriod: (map['duplicationInfrequentAccessPeriod'] as int).input(),
      enableBackupLog: (map['enableBackupLog'] as bool).input(),
      id: (map['id'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      ossBucketName: (map['ossBucketName'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      sourceEndpointDatabaseName: (map['sourceEndpointDatabaseName'] as String).input(),
      sourceEndpointInstanceId: (map['sourceEndpointInstanceId'] as String).input(),
      sourceEndpointInstanceType: (map['sourceEndpointInstanceType'] as String).input(),
      sourceEndpointRegion: (map['sourceEndpointRegion'] as String).input(),
      sourceEndpointSid: (map['sourceEndpointSid'] as String).input(),
      sourceEndpointUserName: (map['sourceEndpointUserName'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

