// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_summary_result_response.dart';
import 'migration_report_result_response.dart';
import 'reportable_exception_response.dart';

class MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse {
  /// Summary of database results in the migration
  final Map<String, DatabaseSummaryResultResponse> databaseSummary;
  /// Selected databases as a map from database name to database id
  final Map<String, String>? databases;
  /// Duration of task execution in seconds.
  final double durationInSeconds;
  /// Migration end time
  final String endedOn;
  /// Migration exceptions and warnings.
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Last time the storage was updated
  final String lastStorageUpdate;
  /// Migration progress message
  final String message;
  /// Migration Report Result, provides unique url for downloading your migration report.
  final MigrationReportResultResponse? migrationReportResult;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Source server brand version
  final String sourceServerBrandVersion;
  /// Source server version
  final String sourceServerVersion;
  /// Migration start time
  final String startedOn;
  /// Current status of migration
  final String status;
  /// Migration status message
  final String statusMessage;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse].
  /// [databaseSummary] Summary of database results in the migration
  /// [databases] Selected databases as a map from database name to database id
  /// [durationInSeconds] Duration of task execution in seconds.
  /// [endedOn] Migration end time
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [id] Result identifier
  /// [lastStorageUpdate] Last time the storage was updated
  /// [message] Migration progress message
  /// [migrationReportResult] Migration Report Result, provides unique url for downloading your migration report.
  /// [resultType] Result type
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [status] Current status of migration
  /// [statusMessage] Migration status message
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Target server version
  MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse({
    required this.databaseSummary,
    this.databases,
    required this.durationInSeconds,
    required this.endedOn,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.lastStorageUpdate,
    required this.message,
    this.migrationReportResult,
    required this.resultType,
    required this.sourceServerBrandVersion,
    required this.sourceServerVersion,
    required this.startedOn,
    required this.status,
    required this.statusMessage,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseSummary': pulumi.Input.encodeMapValues<DatabaseSummaryResultResponse, Map<String, dynamic>>(databaseSummary, (value) => value.toMap()),
      'databases': ?databases,
      'durationInSeconds': durationInSeconds,
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'lastStorageUpdate': lastStorageUpdate,
      'message': message,
      'migrationReportResult': ?migrationReportResult == null ? null : migrationReportResult!.toMap(),
      'resultType': resultType,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'status': status,
      'statusMessage': statusMessage,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse(
      databaseSummary: pulumi.Input.decodeMapValues<DatabaseSummaryResultResponse>(map['databaseSummary'], (value) => DatabaseSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      databases: map['databases'] == null ? null : (map['databases'] as Map).cast<String, String>(),
      durationInSeconds: map['durationInSeconds'] as double,
      endedOn: map['endedOn'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastStorageUpdate: map['lastStorageUpdate'] as String,
      message: map['message'] as String,
      migrationReportResult: map['migrationReportResult'] == null ? null : MigrationReportResultResponse.fromMap((map['migrationReportResult'] as Map).cast<String, dynamic>()),
      resultType: map['resultType'] as String,
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      startedOn: map['startedOn'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}

