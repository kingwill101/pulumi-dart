// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_set_info_response.dart';
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse {
  /// Backup sets that are currently active (Either being uploaded or getting restored)
  final pulumi.Input<List<BackupSetInfoResponse>> activeBackupSets;
  /// Name of container created in the Azure Storage account where backups are copied to
  final pulumi.Input<String> containerName;
  /// Database migration end time
  final pulumi.Input<String> endedOn;
  /// prefix string to use for querying errors for this database
  final pulumi.Input<String> errorPrefix;
  /// Migration exceptions and warnings
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Details of full backup set
  final pulumi.Input<BackupSetInfoResponse> fullBackupSetInfo;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Whether full backup has been applied to the target database or not
  final pulumi.Input<bool> isFullBackupRestored;
  /// Last applied backup set information
  final pulumi.Input<BackupSetInfoResponse> lastRestoredBackupSetInfo;
  /// Current state of database
  final pulumi.Input<String> migrationState;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Name of the database
  final pulumi.Input<String> sourceDatabaseName;
  /// Database migration start time
  final pulumi.Input<String> startedOn;

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
      'activeBackupSets': pulumi.Input.mapInputValue<List<BackupSetInfoResponse>, List<Map<String, dynamic>>>(activeBackupSets, (value) => pulumi.Input.encodeList<BackupSetInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerName': containerName,
      'endedOn': endedOn,
      'errorPrefix': errorPrefix,
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullBackupSetInfo': pulumi.Input.mapInputValue<BackupSetInfoResponse, Map<String, dynamic>>(fullBackupSetInfo, (value) => value.toMap()),
      'id': id,
      'isFullBackupRestored': isFullBackupRestored,
      'lastRestoredBackupSetInfo': pulumi.Input.mapInputValue<BackupSetInfoResponse, Map<String, dynamic>>(lastRestoredBackupSetInfo, (value) => value.toMap()),
      'migrationState': migrationState,
      'resultType': resultType,
      'sourceDatabaseName': sourceDatabaseName,
      'startedOn': startedOn,
    };
  }

  factory MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMISyncTaskOutputDatabaseLevelResponse(
      activeBackupSets: pulumi.Input.fromValue(pulumi.Input.decodeList<BackupSetInfoResponse>(map['activeBackupSets']!, (value) => BackupSetInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      errorPrefix: pulumi.Input.fromValue(map['errorPrefix'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      fullBackupSetInfo: pulumi.Input.fromValue(BackupSetInfoResponse.fromMap((map['fullBackupSetInfo']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      isFullBackupRestored: pulumi.Input.fromValue(map['isFullBackupRestored'] as bool),
      lastRestoredBackupSetInfo: pulumi.Input.fromValue(BackupSetInfoResponse.fromMap((map['lastRestoredBackupSetInfo']! as Map).cast<String, dynamic>())),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      sourceDatabaseName: pulumi.Input.fromValue(map['sourceDatabaseName'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
    );
  }
}

