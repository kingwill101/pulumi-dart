// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_backup_file_info_response.dart';

/// Information of backup set
class SqlBackupSetInfoResponse {
  /// Backup end time.
  final pulumi.Input<String> backupFinishDate;

  /// Backup set id.
  final pulumi.Input<String> backupSetId;

  /// Backup start date.
  final pulumi.Input<String> backupStartDate;

  /// Backup type.
  final pulumi.Input<String> backupType;

  /// Media family count
  final pulumi.Input<int> familyCount;

  /// First LSN of the backup set.
  final pulumi.Input<String> firstLSN;

  /// Has Backup Checksums
  final pulumi.Input<bool> hasBackupChecksums;

  /// The reasons why the backup set is ignored
  final pulumi.Input<List<String>> ignoreReasons;

  /// Whether this backup set has been restored or not.
  final pulumi.Input<bool> isBackupRestored;

  /// Last LSN of the backup set.
  final pulumi.Input<String> lastLSN;

  /// List of files in the backup set.
  final pulumi.Input<List<SqlBackupFileInfoResponse>> listOfBackupFiles;

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
      'listOfBackupFiles':
          pulumi.Input.mapInputValue<
            List<SqlBackupFileInfoResponse>,
            List<Map<String, dynamic>>
          >(
            listOfBackupFiles,
            (value) =>
                pulumi.Input.encodeList<
                  SqlBackupFileInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SqlBackupSetInfoResponse.fromMap(Map<String, dynamic> map) {
    return SqlBackupSetInfoResponse(
      backupFinishDate: pulumi.Input.fromValue(
        map['backupFinishDate'] as String,
      ),
      backupSetId: pulumi.Input.fromValue(map['backupSetId'] as String),
      backupStartDate: pulumi.Input.fromValue(map['backupStartDate'] as String),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      familyCount: pulumi.Input.fromValue(map['familyCount'] as int),
      firstLSN: pulumi.Input.fromValue(map['firstLSN'] as String),
      hasBackupChecksums: pulumi.Input.fromValue(
        map['hasBackupChecksums'] as bool,
      ),
      ignoreReasons: pulumi.Input.fromValue(
        (map['ignoreReasons'] as List).cast<String>(),
      ),
      isBackupRestored: pulumi.Input.fromValue(map['isBackupRestored'] as bool),
      lastLSN: pulumi.Input.fromValue(map['lastLSN'] as String),
      listOfBackupFiles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SqlBackupFileInfoResponse>(
          map['listOfBackupFiles']!,
          (value) => SqlBackupFileInfoResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
