// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_summary_result_response.dart';
import 'migration_report_result_response.dart';
import 'reportable_exception_response.dart';

class MigrateMySqlAzureDbForMySqlOfflineTaskOutputMigrationLevelResponse {
  /// Summary of database results in the migration
  final pulumi.Input<Map<String, DatabaseSummaryResultResponse>> databaseSummary;
  /// Selected databases as a map from database name to database id
  final pulumi.Input<Map<String, String>>? databases;
  /// Duration of task execution in seconds.
  final pulumi.Input<double> durationInSeconds;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Migration exceptions and warnings.
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Last time the storage was updated
  final pulumi.Input<String> lastStorageUpdate;
  /// Migration progress message
  final pulumi.Input<String> message;
  /// Migration Report Result, provides unique url for downloading your migration report.
  final pulumi.Input<MigrationReportResultResponse>? migrationReportResult;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;
  /// Source server version
  final pulumi.Input<String> sourceServerVersion;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current status of migration
  final pulumi.Input<String> status;
  /// Migration status message
  final pulumi.Input<String> statusMessage;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;

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
      'databaseSummary': pulumi.Input.mapInputValue<Map<String, DatabaseSummaryResultResponse>, Map<String, Map<String, dynamic>>>(databaseSummary, (value) => pulumi.Input.encodeMapValues<DatabaseSummaryResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databases': ?databases,
      'durationInSeconds': durationInSeconds,
      'endedOn': endedOn,
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lastStorageUpdate': lastStorageUpdate,
      'message': message,
      'migrationReportResult': ?pulumi.Input.mapOptionalInputValue<MigrationReportResultResponse, Map<String, dynamic>>(migrationReportResult, (value) => value.toMap()),
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
      databaseSummary: (pulumi.Input.decodeMapValues<DatabaseSummaryResultResponse>(map['databaseSummary'], (value) => DatabaseSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databases: map['databases'] == null ? null : ((map['databases']! as Map).cast<String, String>()).input(),
      durationInSeconds: (map['durationInSeconds'] as double).input(),
      endedOn: (map['endedOn'] as String).input(),
      exceptionsAndWarnings: (pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      lastStorageUpdate: (map['lastStorageUpdate'] as String).input(),
      message: (map['message'] as String).input(),
      migrationReportResult: map['migrationReportResult'] == null ? null : (MigrationReportResultResponse.fromMap((map['migrationReportResult']! as Map).cast<String, dynamic>())).input(),
      resultType: (map['resultType'] as String).input(),
      sourceServerBrandVersion: (map['sourceServerBrandVersion'] as String).input(),
      sourceServerVersion: (map['sourceServerVersion'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
      targetServerBrandVersion: (map['targetServerBrandVersion'] as String).input(),
      targetServerVersion: (map['targetServerVersion'] as String).input(),
    );
  }
}

