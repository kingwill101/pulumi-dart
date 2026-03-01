// ignore_for_file: unused_element, unnecessary_cast


class GetDataBackupsBackup {
  /// The backup end time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  final String backupEndTime;
  /// The end time of the backup (local time).
  final String backupEndTimeLocal;
  /// Backup method. Value Description:-**Physical**: Physical backup.-**Snapshot**: the Snapshot backup.
  final String backupMethod;
  /// Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  final String backupMode;
  /// The ID of the backup set.
  final String backupSetId;
  /// The size of the backup file. Unit: Byte.
  final int backupSize;
  /// The backup start time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  final String backupStartTime;
  /// The start time of the backup (local time).
  final String backupStartTimeLocal;
  /// The name of the recovery point or full backup set.
  final String baksetName;
  /// -Full backup: Returns the timestamp of the consistent point in time.-Recoverable point: Returns the timestamp of the recoverable point in time.
  final int consistentTime;
  /// The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  final String dataType;
  /// The instance ID.
  final String dbInstanceId;
  /// Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  final String status;

  /// Creates a new [GetDataBackupsBackup].
  /// [backupEndTime] The backup end time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  /// [backupEndTimeLocal] The end time of the backup (local time).
  /// [backupMethod] Backup method. Value Description:-**Physical**: Physical backup.-**Snapshot**: the Snapshot backup.
  /// [backupMode] Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  /// [backupSetId] The ID of the backup set.
  /// [backupSize] The size of the backup file. Unit: Byte.
  /// [backupStartTime] The backup start time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  /// [backupStartTimeLocal] The start time of the backup (local time).
  /// [baksetName] The name of the recovery point or full backup set.
  /// [consistentTime] -Full backup: Returns the timestamp of the consistent point in time.-Recoverable point: Returns the timestamp of the recoverable point in time.
  /// [dataType] The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  /// [dbInstanceId] The instance ID.
  /// [status] Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  GetDataBackupsBackup({
    required this.backupEndTime,
    required this.backupEndTimeLocal,
    required this.backupMethod,
    required this.backupMode,
    required this.backupSetId,
    required this.backupSize,
    required this.backupStartTime,
    required this.backupStartTimeLocal,
    required this.baksetName,
    required this.consistentTime,
    required this.dataType,
    required this.dbInstanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupEndTime': backupEndTime,
      'backupEndTimeLocal': backupEndTimeLocal,
      'backupMethod': backupMethod,
      'backupMode': backupMode,
      'backupSetId': backupSetId,
      'backupSize': backupSize,
      'backupStartTime': backupStartTime,
      'backupStartTimeLocal': backupStartTimeLocal,
      'baksetName': baksetName,
      'consistentTime': consistentTime,
      'dataType': dataType,
      'dbInstanceId': dbInstanceId,
      'status': status,
    };
  }

  factory GetDataBackupsBackup.fromMap(Map<String, dynamic> map) {
    return GetDataBackupsBackup(
      backupEndTime: map['backupEndTime'] as String,
      backupEndTimeLocal: map['backupEndTimeLocal'] as String,
      backupMethod: map['backupMethod'] as String,
      backupMode: map['backupMode'] as String,
      backupSetId: map['backupSetId'] as String,
      backupSize: map['backupSize'] as int,
      backupStartTime: map['backupStartTime'] as String,
      backupStartTimeLocal: map['backupStartTimeLocal'] as String,
      baksetName: map['baksetName'] as String,
      consistentTime: map['consistentTime'] as int,
      dataType: map['dataType'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      status: map['status'] as String,
    );
  }
}

