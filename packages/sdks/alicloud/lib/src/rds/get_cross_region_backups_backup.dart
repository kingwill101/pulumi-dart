// ignore_for_file: unused_element, unnecessary_cast


class GetCrossRegionBackupsBackup {
  /// The time when the cross-region data backup file was generated.
  final String backupEndTime;
  /// The method that is used to generate the cross-region data backup file. Valid values:
  /// `L` - logical backup.
  /// `P` - physical backup.
  final String backupMethod;
  /// The level at which the cross-region data backup file is generated.
  /// `0` - instance-level backup.
  /// `1` - database-level backup.
  final String backupSetScale;
  /// TThe status of the cross-region data backup. Valid values:
  /// `0` - The cross-region data backup is successful.
  /// `1` - The cross-region data backup failed.
  final int backupSetStatus;
  /// The time when the cross-region data backup started.
  final String backupStartTime;
  /// The type of the cross-region data backup. Valid values:F: full data backup
  /// `F` - full data backup.
  /// `I` - incremental data backup.
  final String backupType;
  /// The RDS edition of the instance. Valid values:
  /// `Basic` - Basic Edition.
  /// `HighAvailability` - High-availability Edition.
  /// `Finance` - Enterprise Edition. This edition is supported only by the China site (aliyun.com).
  final String category;
  /// The point in time that is indicated by the data in the cross-region data backup file.
  final String consistentTime;
  /// The external URL from which you can download the cross-region data backup file.
  final String crossBackupDownloadLink;
  /// The ID of the cross-region data backup file.
  final String crossBackupId;
  /// The ID of the destination region where the cross-region data backup file of the instance is stored.
  final String crossBackupRegion;
  /// The name of the compressed package that contains the cross-region data backup file.
  final String crossBackupSetFile;
  /// The location where the cross-region data backup file is stored.
  final String crossBackupSetLocation;
  /// The size of the cross-region data backup file. Unit: bytes.
  final int crossBackupSetSize;
  /// The storage type.
  final String dbInstanceStorageType;
  /// The engine of the database.
  final String engine;
  /// The version of the database engine.
  final String engineVersion;
  /// The ID of the cross-region data backup file.
  final String id;
  /// The ID of the instance. This parameter is used to determine whether the instance that generates the cross-region data backup file is a primary or secondary instance.
  final int instanceId;
  /// The start time to which data can be restored. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final String recoveryBeginTime;
  /// The end time to which data can be restored. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final String recoveryEndTime;
  /// An array that consists of the regions to which the cross-region data backup file can be restored.
  final List<String> restoreRegions;

  /// Creates a new [GetCrossRegionBackupsBackup].
  /// [backupEndTime] The time when the cross-region data backup file was generated.
  /// [backupMethod] The method that is used to generate the cross-region data backup file. Valid values:
  /// [backupSetScale] The level at which the cross-region data backup file is generated.
  /// [backupSetStatus] TThe status of the cross-region data backup. Valid values:
  /// [backupStartTime] The time when the cross-region data backup started.
  /// [backupType] The type of the cross-region data backup. Valid values:F: full data backup
  /// [category] The RDS edition of the instance. Valid values:
  /// [consistentTime] The point in time that is indicated by the data in the cross-region data backup file.
  /// [crossBackupDownloadLink] The external URL from which you can download the cross-region data backup file.
  /// [crossBackupId] The ID of the cross-region data backup file.
  /// [crossBackupRegion] The ID of the destination region where the cross-region data backup file of the instance is stored.
  /// [crossBackupSetFile] The name of the compressed package that contains the cross-region data backup file.
  /// [crossBackupSetLocation] The location where the cross-region data backup file is stored.
  /// [crossBackupSetSize] The size of the cross-region data backup file. Unit: bytes.
  /// [dbInstanceStorageType] The storage type.
  /// [engine] The engine of the database.
  /// [engineVersion] The version of the database engine.
  /// [id] The ID of the cross-region data backup file.
  /// [instanceId] The ID of the instance. This parameter is used to determine whether the instance that generates the cross-region data backup file is a primary or secondary instance.
  /// [recoveryBeginTime] The start time to which data can be restored. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [recoveryEndTime] The end time to which data can be restored. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [restoreRegions] An array that consists of the regions to which the cross-region data backup file can be restored.
  GetCrossRegionBackupsBackup({
    required this.backupEndTime,
    required this.backupMethod,
    required this.backupSetScale,
    required this.backupSetStatus,
    required this.backupStartTime,
    required this.backupType,
    required this.category,
    required this.consistentTime,
    required this.crossBackupDownloadLink,
    required this.crossBackupId,
    required this.crossBackupRegion,
    required this.crossBackupSetFile,
    required this.crossBackupSetLocation,
    required this.crossBackupSetSize,
    required this.dbInstanceStorageType,
    required this.engine,
    required this.engineVersion,
    required this.id,
    required this.instanceId,
    required this.recoveryBeginTime,
    required this.recoveryEndTime,
    required this.restoreRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupEndTime': backupEndTime,
      'backupMethod': backupMethod,
      'backupSetScale': backupSetScale,
      'backupSetStatus': backupSetStatus,
      'backupStartTime': backupStartTime,
      'backupType': backupType,
      'category': category,
      'consistentTime': consistentTime,
      'crossBackupDownloadLink': crossBackupDownloadLink,
      'crossBackupId': crossBackupId,
      'crossBackupRegion': crossBackupRegion,
      'crossBackupSetFile': crossBackupSetFile,
      'crossBackupSetLocation': crossBackupSetLocation,
      'crossBackupSetSize': crossBackupSetSize,
      'dbInstanceStorageType': dbInstanceStorageType,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'instanceId': instanceId,
      'recoveryBeginTime': recoveryBeginTime,
      'recoveryEndTime': recoveryEndTime,
      'restoreRegions': restoreRegions,
    };
  }

  factory GetCrossRegionBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionBackupsBackup(
      backupEndTime: map['backupEndTime'] as String,
      backupMethod: map['backupMethod'] as String,
      backupSetScale: map['backupSetScale'] as String,
      backupSetStatus: map['backupSetStatus'] as int,
      backupStartTime: map['backupStartTime'] as String,
      backupType: map['backupType'] as String,
      category: map['category'] as String,
      consistentTime: map['consistentTime'] as String,
      crossBackupDownloadLink: map['crossBackupDownloadLink'] as String,
      crossBackupId: map['crossBackupId'] as String,
      crossBackupRegion: map['crossBackupRegion'] as String,
      crossBackupSetFile: map['crossBackupSetFile'] as String,
      crossBackupSetLocation: map['crossBackupSetLocation'] as String,
      crossBackupSetSize: map['crossBackupSetSize'] as int,
      dbInstanceStorageType: map['dbInstanceStorageType'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as int,
      recoveryBeginTime: map['recoveryBeginTime'] as String,
      recoveryEndTime: map['recoveryEndTime'] as String,
      restoreRegions: (map['restoreRegions'] as List).cast<String>(),
    );
  }
}

