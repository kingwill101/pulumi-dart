// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_backup_set_info_response.dart';

/// Detailed status of current migration.
class MigrationStatusDetailsResponse {
  /// Backup sets that are currently active.
  final List<SqlBackupSetInfoResponse> activeBackupSets;
  /// Name of blob container.
  final String blobContainerName;
  /// Complete restore error message, if any
  final String completeRestoreErrorMessage;
  /// File name that is currently being restored.
  final String currentRestoringFilename;
  /// File upload blocking errors, if any.
  final List<String> fileUploadBlockingErrors;
  /// Details of full backup set.
  final SqlBackupSetInfoResponse fullBackupSetInfo;
  /// Files that are not valid backup files.
  final List<String> invalidFiles;
  /// Whether full backup has been applied to the target database or not.
  final bool isFullBackupRestored;
  /// Last applied backup set information.
  final SqlBackupSetInfoResponse lastRestoredBackupSetInfo;
  /// Last restored file name.
  final String lastRestoredFilename;
  /// Current State of Migration.
  final String migrationState;
  /// Total pending log backups.
  final int pendingLogBackupsCount;
  /// Restore blocking reason, if any
  final String restoreBlockingReason;

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
  MigrationStatusDetailsResponse({
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
      'activeBackupSets': pulumi.Input.encodeList<SqlBackupSetInfoResponse, Map<String, dynamic>>(activeBackupSets, (value) => value.toMap()),
      'blobContainerName': blobContainerName,
      'completeRestoreErrorMessage': completeRestoreErrorMessage,
      'currentRestoringFilename': currentRestoringFilename,
      'fileUploadBlockingErrors': fileUploadBlockingErrors,
      'fullBackupSetInfo': fullBackupSetInfo.toMap(),
      'invalidFiles': invalidFiles,
      'isFullBackupRestored': isFullBackupRestored,
      'lastRestoredBackupSetInfo': lastRestoredBackupSetInfo.toMap(),
      'lastRestoredFilename': lastRestoredFilename,
      'migrationState': migrationState,
      'pendingLogBackupsCount': pendingLogBackupsCount,
      'restoreBlockingReason': restoreBlockingReason,
    };
  }

  factory MigrationStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MigrationStatusDetailsResponse(
      activeBackupSets: pulumi.Input.decodeList<SqlBackupSetInfoResponse>(map['activeBackupSets'], (value) => SqlBackupSetInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      blobContainerName: map['blobContainerName'] as String,
      completeRestoreErrorMessage: map['completeRestoreErrorMessage'] as String,
      currentRestoringFilename: map['currentRestoringFilename'] as String,
      fileUploadBlockingErrors: (map['fileUploadBlockingErrors'] as List).cast<String>(),
      fullBackupSetInfo: SqlBackupSetInfoResponse.fromMap((map['fullBackupSetInfo'] as Map).cast<String, dynamic>()),
      invalidFiles: (map['invalidFiles'] as List).cast<String>(),
      isFullBackupRestored: map['isFullBackupRestored'] as bool,
      lastRestoredBackupSetInfo: SqlBackupSetInfoResponse.fromMap((map['lastRestoredBackupSetInfo'] as Map).cast<String, dynamic>()),
      lastRestoredFilename: map['lastRestoredFilename'] as String,
      migrationState: map['migrationState'] as String,
      pendingLogBackupsCount: map['pendingLogBackupsCount'] as int,
      restoreBlockingReason: map['restoreBlockingReason'] as String,
    );
  }
}

