// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_file_info_response.dart';

/// Information of backup set
class BackupSetInfoResponse {
  /// Date and time that the backup operation finished
  final String? backupFinishedDate;
  /// Id for the set of backup files
  final String? backupSetId;
  /// Date and time that the backup operation began
  final String? backupStartDate;
  /// Enum of the different backup types
  final String? backupType;
  /// Name of the database to which the backup set belongs
  final String? databaseName;
  /// First log sequence number of the backup file
  final String? firstLsn;
  /// Whether the backup set is restored or not
  final bool? isBackupRestored;
  /// Last log sequence number of the backup file
  final String? lastLsn;
  /// Last modified time of the backup file in share location
  final String? lastModifiedTime;
  /// List of files in the backup set
  final List<BackupFileInfoResponse>? listOfBackupFiles;

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
  BackupSetInfoResponse({
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
      'listOfBackupFiles': ?listOfBackupFiles == null ? null : pulumi.Input.encodeList<BackupFileInfoResponse, Map<String, dynamic>>(listOfBackupFiles!, (value) => value.toMap()),
    };
  }

  factory BackupSetInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupSetInfoResponse(
      backupFinishedDate: map['backupFinishedDate'] == null ? null : map['backupFinishedDate'] as String,
      backupSetId: map['backupSetId'] == null ? null : map['backupSetId'] as String,
      backupStartDate: map['backupStartDate'] == null ? null : map['backupStartDate'] as String,
      backupType: map['backupType'] == null ? null : map['backupType'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      firstLsn: map['firstLsn'] == null ? null : map['firstLsn'] as String,
      isBackupRestored: map['isBackupRestored'] == null ? null : map['isBackupRestored'] as bool,
      lastLsn: map['lastLsn'] == null ? null : map['lastLsn'] as String,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      listOfBackupFiles: map['listOfBackupFiles'] == null ? null : pulumi.Input.decodeList<BackupFileInfoResponse>(map['listOfBackupFiles'], (value) => BackupFileInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

