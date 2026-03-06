// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_file_info_response.dart';

/// Information of backup set
class BackupSetInfoResponse {
  /// Date and time that the backup operation finished
  final pulumi.Input<String>? backupFinishedDate;
  /// Id for the set of backup files
  final pulumi.Input<String>? backupSetId;
  /// Date and time that the backup operation began
  final pulumi.Input<String>? backupStartDate;
  /// Enum of the different backup types
  final pulumi.Input<String>? backupType;
  /// Name of the database to which the backup set belongs
  final pulumi.Input<String>? databaseName;
  /// First log sequence number of the backup file
  final pulumi.Input<String>? firstLsn;
  /// Whether the backup set is restored or not
  final pulumi.Input<bool>? isBackupRestored;
  /// Last log sequence number of the backup file
  final pulumi.Input<String>? lastLsn;
  /// Last modified time of the backup file in share location
  final pulumi.Input<String>? lastModifiedTime;
  /// List of files in the backup set
  final pulumi.Input<List<BackupFileInfoResponse>>? listOfBackupFiles;

  /// Creates a new [BackupSetInfoResponse].
  /// [backupFinishedDate] Date and time that the backup operation finished
  /// [backupSetId] Id for the set of backup files
  /// [backupStartDate] Date and time that the backup operation began
  /// [backupType] Enum of the different backup types
  /// [databaseName] Name of the database to which the backup set belongs
  /// [firstLsn] First log sequence number of the backup file
  /// [isBackupRestored] Whether the backup set is restored or not
  /// [lastLsn] Last log sequence number of the backup file
  /// [lastModifiedTime] Last modified time of the backup file in share location
  /// [listOfBackupFiles] List of files in the backup set
  const BackupSetInfoResponse({
    this.backupFinishedDate,
    this.backupSetId,
    this.backupStartDate,
    this.backupType,
    this.databaseName,
    this.firstLsn,
    this.isBackupRestored,
    this.lastLsn,
    this.lastModifiedTime,
    this.listOfBackupFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFinishedDate': ?backupFinishedDate,
      'backupSetId': ?backupSetId,
      'backupStartDate': ?backupStartDate,
      'backupType': ?backupType,
      'databaseName': ?databaseName,
      'firstLsn': ?firstLsn,
      'isBackupRestored': ?isBackupRestored,
      'lastLsn': ?lastLsn,
      'lastModifiedTime': ?lastModifiedTime,
      'listOfBackupFiles': ?pulumi.Input.mapOptionalInputValue<List<BackupFileInfoResponse>, List<Map<String, dynamic>>>(listOfBackupFiles, (value) => pulumi.Input.encodeList<BackupFileInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackupSetInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupSetInfoResponse(
      backupFinishedDate: (() { final guardedValue = map['backupFinishedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupSetId: (() { final guardedValue = map['backupSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupStartDate: (() { final guardedValue = map['backupStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstLsn: (() { final guardedValue = map['firstLsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isBackupRestored: (() { final guardedValue = map['isBackupRestored']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastLsn: (() { final guardedValue = map['lastLsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listOfBackupFiles: (() { final guardedValue = map['listOfBackupFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupFileInfoResponse>(guardedValue, (value) => BackupFileInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

