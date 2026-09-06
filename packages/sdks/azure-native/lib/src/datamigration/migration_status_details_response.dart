// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_backup_set_info_response.dart';

/// Detailed status of current migration.
class MigrationStatusDetailsResponse {
  /// Backup sets that are currently active.
  final pulumi.Input<List<SqlBackupSetInfoResponse>> activeBackupSets;
  /// Name of blob container.
  final pulumi.Input<String> blobContainerName;
  /// Complete restore error message, if any
  final pulumi.Input<String> completeRestoreErrorMessage;
  /// File name that is currently being restored.
  final pulumi.Input<String> currentRestoringFilename;
  /// File upload blocking errors, if any.
  final pulumi.Input<List<String>> fileUploadBlockingErrors;
  /// Details of full backup set.
  final pulumi.Input<SqlBackupSetInfoResponse> fullBackupSetInfo;
  /// Files that are not valid backup files.
  final pulumi.Input<List<String>> invalidFiles;
  /// Whether full backup has been applied to the target database or not.
  final pulumi.Input<bool> isFullBackupRestored;
  /// Last applied backup set information.
  final pulumi.Input<SqlBackupSetInfoResponse> lastRestoredBackupSetInfo;
  /// Last restored file name.
  final pulumi.Input<String> lastRestoredFilename;
  /// Current State of Migration.
  final pulumi.Input<String> migrationState;
  /// Total pending log backups.
  final pulumi.Input<int> pendingLogBackupsCount;
  /// Restore blocking reason, if any
  final pulumi.Input<String> restoreBlockingReason;

  /// Creates a new [MigrationStatusDetailsResponse].
  /// [activeBackupSets] Backup sets that are currently active.
  /// [blobContainerName] Name of blob container.
  /// [completeRestoreErrorMessage] Complete restore error message, if any
  /// [currentRestoringFilename] File name that is currently being restored.
  /// [fileUploadBlockingErrors] File upload blocking errors, if any.
  /// [fullBackupSetInfo] Details of full backup set.
  /// [invalidFiles] Files that are not valid backup files.
  /// [isFullBackupRestored] Whether full backup has been applied to the target database or not.
  /// [lastRestoredBackupSetInfo] Last applied backup set information.
  /// [lastRestoredFilename] Last restored file name.
  /// [migrationState] Current State of Migration.
  /// [pendingLogBackupsCount] Total pending log backups.
  /// [restoreBlockingReason] Restore blocking reason, if any
  const MigrationStatusDetailsResponse({
    required this.activeBackupSets,
    required this.blobContainerName,
    required this.completeRestoreErrorMessage,
    required this.currentRestoringFilename,
    required this.fileUploadBlockingErrors,
    required this.fullBackupSetInfo,
    required this.invalidFiles,
    required this.isFullBackupRestored,
    required this.lastRestoredBackupSetInfo,
    required this.lastRestoredFilename,
    required this.migrationState,
    required this.pendingLogBackupsCount,
    required this.restoreBlockingReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeBackupSets': pulumi.Input.mapInputValue<List<SqlBackupSetInfoResponse>, List<Map<String, dynamic>>>(activeBackupSets, (value) => pulumi.Input.encodeList<SqlBackupSetInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'blobContainerName': blobContainerName,
      'completeRestoreErrorMessage': completeRestoreErrorMessage,
      'currentRestoringFilename': currentRestoringFilename,
      'fileUploadBlockingErrors': fileUploadBlockingErrors,
      'fullBackupSetInfo': pulumi.Input.mapInputValue<SqlBackupSetInfoResponse, Map<String, dynamic>>(fullBackupSetInfo, (value) => value.toMap()),
      'invalidFiles': invalidFiles,
      'isFullBackupRestored': isFullBackupRestored,
      'lastRestoredBackupSetInfo': pulumi.Input.mapInputValue<SqlBackupSetInfoResponse, Map<String, dynamic>>(lastRestoredBackupSetInfo, (value) => value.toMap()),
      'lastRestoredFilename': lastRestoredFilename,
      'migrationState': migrationState,
      'pendingLogBackupsCount': pendingLogBackupsCount,
      'restoreBlockingReason': restoreBlockingReason,
    };
  }

  factory MigrationStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MigrationStatusDetailsResponse(
      activeBackupSets: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlBackupSetInfoResponse>(map['activeBackupSets']!, (value) => SqlBackupSetInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      blobContainerName: pulumi.Input.fromValue(map['blobContainerName'] as String),
      completeRestoreErrorMessage: pulumi.Input.fromValue(map['completeRestoreErrorMessage'] as String),
      currentRestoringFilename: pulumi.Input.fromValue(map['currentRestoringFilename'] as String),
      fileUploadBlockingErrors: pulumi.Input.fromValue((map['fileUploadBlockingErrors'] as List).cast<String>()),
      fullBackupSetInfo: pulumi.Input.fromValue(SqlBackupSetInfoResponse.fromMap((map['fullBackupSetInfo']! as Map).cast<String, dynamic>())),
      invalidFiles: pulumi.Input.fromValue((map['invalidFiles'] as List).cast<String>()),
      isFullBackupRestored: pulumi.Input.fromValue(map['isFullBackupRestored'] as bool),
      lastRestoredBackupSetInfo: pulumi.Input.fromValue(SqlBackupSetInfoResponse.fromMap((map['lastRestoredBackupSetInfo']! as Map).cast<String, dynamic>())),
      lastRestoredFilename: pulumi.Input.fromValue(map['lastRestoredFilename'] as String),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      pendingLogBackupsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['pendingLogBackupsCount'])),
      restoreBlockingReason: pulumi.Input.fromValue(map['restoreBlockingReason'] as String),
    );
  }
}
