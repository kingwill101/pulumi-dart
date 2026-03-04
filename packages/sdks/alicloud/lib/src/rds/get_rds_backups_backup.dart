// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRdsBackupsBackup {
  /// The backup download url.
  final pulumi.Input<String> backupDownloadUrl;

  /// BackupEndTime.
  final pulumi.Input<String> backupEndTime;

  /// BackupId.
  final pulumi.Input<String> backupId;

  /// The initiator of the backup task. Value:
  /// * **System**: automatically initiated by the System
  /// * **User**: manually initiated by the User.
  final pulumi.Input<String> backupInitiator;

  /// The backup intranet download url.
  final pulumi.Input<String> backupIntranetDownloadUrl;

  /// BackupMethod.
  final pulumi.Input<String> backupMethod;

  /// BackupMode.
  final pulumi.Input<String> backupMode;

  /// BackupSize.
  final pulumi.Input<String> backupSize;

  /// BackupStartTime.
  final pulumi.Input<String> backupStartTime;

  /// Backup task status. **NOTE:** This parameter will only be returned when a task is executed. Value:
  /// * **NoStart**: Not started
  /// * **Checking**: check the backup
  /// * **Preparing**: Prepare a backup
  /// * **Waiting**: Waiting for backup
  /// * **Uploading**: Upload backup
  /// * **Finished**: Complete backup
  /// * **Failed**: backup Failed
  final pulumi.Input<String> backupStatus;

  /// BackupType.
  final pulumi.Input<String> backupType;

  /// The consistency point of the backup set. The return value is a timestamp. **NOTE:** only MySQL 5.6 returns this parameter, and other versions return 0.
  final pulumi.Input<String> consistentTime;

  /// The backup mode is divided into the normal backup mode (full and incremental recovery is supported) and the replication-only mode (full recovery is supported only). **NOTE:** Only SQL Server returns this parameter. Valid values:
  /// * **0**: General Backup Mode
  /// * **1**: Copy only mode
  final pulumi.Input<String> copyOnlyBackup;

  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;

  /// The encrypted information of the backup set.
  final pulumi.Input<String> encryption;

  /// HostInstanceID.
  final pulumi.Input<String> hostInstanceId;

  /// The ID of the Backup.
  final pulumi.Input<String> id;

  /// Whether the backup set is available, the value is:
  /// * **0**: Not available
  /// * **1**: Available.
  final pulumi.Input<int> isAvail;

  /// The backup set status of the database table. **NOTE:** an empty string indicates that the backup set for database table recovery is not enabled. Valid values:
  /// * **OK**: normal.
  /// * **LARGE**: There are too many tables that cannot be used for database and table recovery.
  /// * **EMPTY**: The backup set that failed to be backed up.
  final pulumi.Input<String> metaStatus;

  /// The storage medium for the backup set. Valid values:
  /// * **0**: Regular storage
  /// * **1**: Archive storage.
  final pulumi.Input<String> storageClass;

  /// StoreStatus.
  final pulumi.Input<String> storeStatus;

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
      backupDownloadUrl: pulumi.Input.fromValue(
        map['backupDownloadUrl'] as String,
      ),
      backupEndTime: pulumi.Input.fromValue(map['backupEndTime'] as String),
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      backupInitiator: pulumi.Input.fromValue(map['backupInitiator'] as String),
      backupIntranetDownloadUrl: pulumi.Input.fromValue(
        map['backupIntranetDownloadUrl'] as String,
      ),
      backupMethod: pulumi.Input.fromValue(map['backupMethod'] as String),
      backupMode: pulumi.Input.fromValue(map['backupMode'] as String),
      backupSize: pulumi.Input.fromValue(map['backupSize'] as String),
      backupStartTime: pulumi.Input.fromValue(map['backupStartTime'] as String),
      backupStatus: pulumi.Input.fromValue(map['backupStatus'] as String),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      consistentTime: pulumi.Input.fromValue(map['consistentTime'] as String),
      copyOnlyBackup: pulumi.Input.fromValue(map['copyOnlyBackup'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      encryption: pulumi.Input.fromValue(map['encryption'] as String),
      hostInstanceId: pulumi.Input.fromValue(map['hostInstanceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isAvail: pulumi.Input.fromValue(map['isAvail'] as int),
      metaStatus: pulumi.Input.fromValue(map['metaStatus'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
      storeStatus: pulumi.Input.fromValue(map['storeStatus'] as String),
    );
  }
}
