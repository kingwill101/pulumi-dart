// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataBackupsBackup {
  /// The backup end time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  final pulumi.Input<String> backupEndTime;
  /// The end time of the backup (local time).
  final pulumi.Input<String> backupEndTimeLocal;
  /// Backup method. Value Description:-**Physical**: Physical backup.-**Snapshot**: the Snapshot backup.
  final pulumi.Input<String> backupMethod;
  /// Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  final pulumi.Input<String> backupMode;
  /// The ID of the backup set.
  final pulumi.Input<String> backupSetId;
  /// The size of the backup file. Unit: Byte.
  final pulumi.Input<int> backupSize;
  /// The backup start time. Format: yyyy-MM-ddTHH:mm:ssZ(UTC time).
  final pulumi.Input<String> backupStartTime;
  /// The start time of the backup (local time).
  final pulumi.Input<String> backupStartTimeLocal;
  /// The name of the recovery point or full backup set.
  final pulumi.Input<String> baksetName;
  /// -Full backup: Returns the timestamp of the consistent point in time.-Recoverable point: Returns the timestamp of the recoverable point in time.
  final pulumi.Input<int> consistentTime;
  /// The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  final pulumi.Input<String> dataType;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  final pulumi.Input<String> status;

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
  const GetDataBackupsBackup({
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
      backupEndTime: pulumi.Input.fromValue(map['backupEndTime'] as String),
      backupEndTimeLocal: pulumi.Input.fromValue(map['backupEndTimeLocal'] as String),
      backupMethod: pulumi.Input.fromValue(map['backupMethod'] as String),
      backupMode: pulumi.Input.fromValue(map['backupMode'] as String),
      backupSetId: pulumi.Input.fromValue(map['backupSetId'] as String),
      backupSize: pulumi.Input.fromValue(map['backupSize'] as int),
      backupStartTime: pulumi.Input.fromValue(map['backupStartTime'] as String),
      backupStartTimeLocal: pulumi.Input.fromValue(map['backupStartTimeLocal'] as String),
      baksetName: pulumi.Input.fromValue(map['baksetName'] as String),
      consistentTime: pulumi.Input.fromValue(map['consistentTime'] as int),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

