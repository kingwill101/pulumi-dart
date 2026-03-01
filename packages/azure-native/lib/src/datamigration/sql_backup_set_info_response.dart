// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_backup_file_info_response.dart';

/// Information of backup set
class SqlBackupSetInfoResponse {
  /// Backup end time.
  final String backupFinishDate;
  /// Backup set id.
  final String backupSetId;
  /// Backup start date.
  final String backupStartDate;
  /// Backup type.
  final String backupType;
  /// Media family count
  final int familyCount;
  /// First LSN of the backup set.
  final String firstLSN;
  /// Has Backup Checksums
  final bool hasBackupChecksums;
  /// The reasons why the backup set is ignored
  final List<String> ignoreReasons;
  /// Whether this backup set has been restored or not.
  final bool isBackupRestored;
  /// Last LSN of the backup set.
  final String lastLSN;
  /// List of files in the backup set.
  final List<SqlBackupFileInfoResponse> listOfBackupFiles;

  /// Creates a new [SqlBackupSetInfoResponse].
  /// [backupFinishDate] Backup end time.
  /// [backupSetId] Backup set id.
  /// [backupStartDate] Backup start date.
  /// [backupType] Backup type.
  /// [familyCount] Media family count
  /// [firstLSN] First LSN of the backup set.
  /// [hasBackupChecksums] Has Backup Checksums
  /// [ignoreReasons] The reasons why the backup set is ignored
  /// [isBackupRestored] Whether this backup set has been restored or not.
  /// [lastLSN] Last LSN of the backup set.
  /// [listOfBackupFiles] List of files in the backup set.
  SqlBackupSetInfoResponse({
    required this.backupFinishDate,
    required this.backupSetId,
    required this.backupStartDate,
    required this.backupType,
    required this.familyCount,
    required this.firstLSN,
    required this.hasBackupChecksums,
    required this.ignoreReasons,
    required this.isBackupRestored,
    required this.lastLSN,
    required this.listOfBackupFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFinishDate': backupFinishDate,
      'backupSetId': backupSetId,
      'backupStartDate': backupStartDate,
      'backupType': backupType,
      'familyCount': familyCount,
      'firstLSN': firstLSN,
      'hasBackupChecksums': hasBackupChecksums,
      'ignoreReasons': ignoreReasons,
      'isBackupRestored': isBackupRestored,
      'lastLSN': lastLSN,
      'listOfBackupFiles': pulumi.Input.encodeList<SqlBackupFileInfoResponse, Map<String, dynamic>>(listOfBackupFiles, (value) => value.toMap()),
    };
  }

  factory SqlBackupSetInfoResponse.fromMap(Map<String, dynamic> map) {
    return SqlBackupSetInfoResponse(
      backupFinishDate: map['backupFinishDate'] as String,
      backupSetId: map['backupSetId'] as String,
      backupStartDate: map['backupStartDate'] as String,
      backupType: map['backupType'] as String,
      familyCount: map['familyCount'] as int,
      firstLSN: map['firstLSN'] as String,
      hasBackupChecksums: map['hasBackupChecksums'] as bool,
      ignoreReasons: (map['ignoreReasons'] as List).cast<String>(),
      isBackupRestored: map['isBackupRestored'] as bool,
      lastLSN: map['lastLSN'] as String,
      listOfBackupFiles: pulumi.Input.decodeList<SqlBackupFileInfoResponse>(map['listOfBackupFiles'], (value) => SqlBackupFileInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

