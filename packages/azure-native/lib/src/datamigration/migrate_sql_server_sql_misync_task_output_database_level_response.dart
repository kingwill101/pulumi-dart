// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_set_info_response.dart';
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse {
  /// Backup sets that are currently active (Either being uploaded or getting restored)
  final List<BackupSetInfoResponse> activeBackupSets;
  /// Name of container created in the Azure Storage account where backups are copied to
  final String containerName;
  /// Database migration end time
  final String endedOn;
  /// prefix string to use for querying errors for this database
  final String errorPrefix;
  /// Migration exceptions and warnings
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Details of full backup set
  final BackupSetInfoResponse fullBackupSetInfo;
  /// Result identifier
  final String id;
  /// Whether full backup has been applied to the target database or not
  final bool isFullBackupRestored;
  /// Last applied backup set information
  final BackupSetInfoResponse lastRestoredBackupSetInfo;
  /// Current state of database
  final String migrationState;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final String resultType;
  /// Name of the database
  final String sourceDatabaseName;
  /// Database migration start time
  final String startedOn;

  /// Creates a new [MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse].
  /// [activeBackupSets] Backup sets that are currently active (Either being uploaded or getting restored)
  /// [containerName] Name of container created in the Azure Storage account where backups are copied to
  /// [endedOn] Database migration end time
  /// [errorPrefix] prefix string to use for querying errors for this database
  /// [exceptionsAndWarnings] Migration exceptions and warnings
  /// [fullBackupSetInfo] Details of full backup set
  /// [id] Result identifier
  /// [isFullBackupRestored] Whether full backup has been applied to the target database or not
  /// [lastRestoredBackupSetInfo] Last applied backup set information
  /// [migrationState] Current state of database
  /// [resultType] Result type
  /// [sourceDatabaseName] Name of the database
  /// [startedOn] Database migration start time
  MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse({
    required this.activeBackupSets,
    required this.containerName,
    required this.endedOn,
    required this.errorPrefix,
    required this.exceptionsAndWarnings,
    required this.fullBackupSetInfo,
    required this.id,
    required this.isFullBackupRestored,
    required this.lastRestoredBackupSetInfo,
    required this.migrationState,
    required this.resultType,
    required this.sourceDatabaseName,
    required this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeBackupSets': pulumi.Input.encodeList<BackupSetInfoResponse, Map<String, dynamic>>(activeBackupSets, (value) => value.toMap()),
      'containerName': containerName,
      'endedOn': endedOn,
      'errorPrefix': errorPrefix,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'fullBackupSetInfo': fullBackupSetInfo.toMap(),
      'id': id,
      'isFullBackupRestored': isFullBackupRestored,
      'lastRestoredBackupSetInfo': lastRestoredBackupSetInfo.toMap(),
      'migrationState': migrationState,
      'resultType': resultType,
      'sourceDatabaseName': sourceDatabaseName,
      'startedOn': startedOn,
    };
  }

  factory MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse(
      activeBackupSets: pulumi.Input.decodeList<BackupSetInfoResponse>(map['activeBackupSets'], (value) => BackupSetInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      containerName: map['containerName'] as String,
      endedOn: map['endedOn'] as String,
      errorPrefix: map['errorPrefix'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      fullBackupSetInfo: BackupSetInfoResponse.fromMap((map['fullBackupSetInfo'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      isFullBackupRestored: map['isFullBackupRestored'] as bool,
      lastRestoredBackupSetInfo: BackupSetInfoResponse.fromMap((map['lastRestoredBackupSetInfo'] as Map).cast<String, dynamic>()),
      migrationState: map['migrationState'] as String,
      resultType: map['resultType'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}

