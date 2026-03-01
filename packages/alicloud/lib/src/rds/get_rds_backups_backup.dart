// ignore_for_file: unused_element, unnecessary_cast


class GetRdsBackupsBackup {
  /// The backup download url.
  final String backupDownloadUrl;
  /// BackupEndTime.
  final String backupEndTime;
  /// BackupId.
  final String backupId;
  /// The initiator of the backup task. Value:
  /// * **System**: automatically initiated by the System
  /// * **User**: manually initiated by the User.
  final String backupInitiator;
  /// The backup intranet download url.
  final String backupIntranetDownloadUrl;
  /// BackupMethod.
  final String backupMethod;
  /// BackupMode.
  final String backupMode;
  /// BackupSize.
  final String backupSize;
  /// BackupStartTime.
  final String backupStartTime;
  /// Backup task status. **NOTE:** This parameter will only be returned when a task is executed. Value:
  /// * **NoStart**: Not started
  /// * **Checking**: check the backup
  /// * **Preparing**: Prepare a backup
  /// * **Waiting**: Waiting for backup
  /// * **Uploading**: Upload backup
  /// * **Finished**: Complete backup
  /// * **Failed**: backup Failed
  final String backupStatus;
  /// BackupType.
  final String backupType;
  /// The consistency point of the backup set. The return value is a timestamp. **NOTE:** only MySQL 5.6 returns this parameter, and other versions return 0.
  final String consistentTime;
  /// The backup mode is divided into the normal backup mode (full and incremental recovery is supported) and the replication-only mode (full recovery is supported only). **NOTE:** Only SQL Server returns this parameter. Valid values:
  /// * **0**: General Backup Mode
  /// * **1**: Copy only mode
  final String copyOnlyBackup;
  /// The db instance id.
  final String dbInstanceId;
  /// The encrypted information of the backup set.
  final String encryption;
  /// HostInstanceID.
  final String hostInstanceId;
  /// The ID of the Backup.
  final String id;
  /// Whether the backup set is available, the value is:
  /// * **0**: Not available
  /// * **1**: Available.
  final int isAvail;
  /// The backup set status of the database table. **NOTE:** an empty string indicates that the backup set for database table recovery is not enabled. Valid values:
  /// * **OK**: normal.
  /// * **LARGE**: There are too many tables that cannot be used for database and table recovery.
  /// * **EMPTY**: The backup set that failed to be backed up.
  final String metaStatus;
  /// The storage medium for the backup set. Valid values:
  /// * **0**: Regular storage
  /// * **1**: Archive storage.
  final String storageClass;
  /// StoreStatus.
  final String storeStatus;

  /// Creates a new [GetRdsBackupsBackup].
  /// [backupDownloadUrl] The backup download url.
  /// [backupEndTime] BackupEndTime.
  /// [backupId] BackupId.
  /// [backupInitiator] The initiator of the backup task. Value:
  /// [backupIntranetDownloadUrl] The backup intranet download url.
  /// [backupMethod] BackupMethod.
  /// [backupMode] BackupMode.
  /// [backupSize] BackupSize.
  /// [backupStartTime] BackupStartTime.
  /// [backupStatus] Backup task status. **NOTE:** This parameter will only be returned when a task is executed. Value:
  /// [backupType] BackupType.
  /// [consistentTime] The consistency point of the backup set. The return value is a timestamp. **NOTE:** only MySQL 5.6 returns this parameter, and other versions return 0.
  /// [copyOnlyBackup] The backup mode is divided into the normal backup mode (full and incremental recovery is supported) and the replication-only mode (full recovery is supported only). **NOTE:** Only SQL Server returns this parameter. Valid values:
  /// [dbInstanceId] The db instance id.
  /// [encryption] The encrypted information of the backup set.
  /// [hostInstanceId] HostInstanceID.
  /// [id] The ID of the Backup.
  /// [isAvail] Whether the backup set is available, the value is:
  /// [metaStatus] The backup set status of the database table. **NOTE:** an empty string indicates that the backup set for database table recovery is not enabled. Valid values:
  /// [storageClass] The storage medium for the backup set. Valid values:
  /// [storeStatus] StoreStatus.
  GetRdsBackupsBackup({
    required this.backupDownloadUrl,
    required this.backupEndTime,
    required this.backupId,
    required this.backupInitiator,
    required this.backupIntranetDownloadUrl,
    required this.backupMethod,
    required this.backupMode,
    required this.backupSize,
    required this.backupStartTime,
    required this.backupStatus,
    required this.backupType,
    required this.consistentTime,
    required this.copyOnlyBackup,
    required this.dbInstanceId,
    required this.encryption,
    required this.hostInstanceId,
    required this.id,
    required this.isAvail,
    required this.metaStatus,
    required this.storageClass,
    required this.storeStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDownloadUrl': backupDownloadUrl,
      'backupEndTime': backupEndTime,
      'backupId': backupId,
      'backupInitiator': backupInitiator,
      'backupIntranetDownloadUrl': backupIntranetDownloadUrl,
      'backupMethod': backupMethod,
      'backupMode': backupMode,
      'backupSize': backupSize,
      'backupStartTime': backupStartTime,
      'backupStatus': backupStatus,
      'backupType': backupType,
      'consistentTime': consistentTime,
      'copyOnlyBackup': copyOnlyBackup,
      'dbInstanceId': dbInstanceId,
      'encryption': encryption,
      'hostInstanceId': hostInstanceId,
      'id': id,
      'isAvail': isAvail,
      'metaStatus': metaStatus,
      'storageClass': storageClass,
      'storeStatus': storeStatus,
    };
  }

  factory GetRdsBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetRdsBackupsBackup(
      backupDownloadUrl: map['backupDownloadUrl'] as String,
      backupEndTime: map['backupEndTime'] as String,
      backupId: map['backupId'] as String,
      backupInitiator: map['backupInitiator'] as String,
      backupIntranetDownloadUrl: map['backupIntranetDownloadUrl'] as String,
      backupMethod: map['backupMethod'] as String,
      backupMode: map['backupMode'] as String,
      backupSize: map['backupSize'] as String,
      backupStartTime: map['backupStartTime'] as String,
      backupStatus: map['backupStatus'] as String,
      backupType: map['backupType'] as String,
      consistentTime: map['consistentTime'] as String,
      copyOnlyBackup: map['copyOnlyBackup'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      encryption: map['encryption'] as String,
      hostInstanceId: map['hostInstanceId'] as String,
      id: map['id'] as String,
      isAvail: map['isAvail'] as int,
      metaStatus: map['metaStatus'] as String,
      storageClass: map['storageClass'] as String,
      storeStatus: map['storeStatus'] as String,
    );
  }
}

