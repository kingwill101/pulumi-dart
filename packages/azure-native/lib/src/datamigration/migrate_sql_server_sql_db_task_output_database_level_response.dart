// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_item_migration_summary_result_response.dart';
import 'reportable_exception_response.dart';

class MigrateSqlServerSqlDbTaskOutputDatabaseLevelResponse {
  /// Name of the item
  final String databaseName;
  /// Migration end time
  final String endedOn;
  /// Number of database/object errors.
  final double errorCount;
  /// Wildcard string prefix to use for querying all errors of the item
  final String errorPrefix;
  /// Migration exceptions and warnings.
  final List<ReportableExceptionResponse> exceptionsAndWarnings;
  /// Result identifier
  final String id;
  /// Migration progress message
  final String message;
  /// Number of objects
  final double numberOfObjects;
  /// Number of successfully completed objects
  final double numberOfObjectsCompleted;
  /// Summary of object results in the migration
  final Map<String, DataItemMigrationSummaryResultResponse> objectSummary;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final String resultPrefix;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final String resultType;
  /// Migration stage that this database is in
  final String stage;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Status message
  final String statusMessage;

  /// Creates a new [MigrateSqlServerSqlDbTaskOutputDatabaseLevelResponse].
  /// [databaseName] Name of the item
  /// [endedOn] Migration end time
  /// [errorCount] Number of database/object errors.
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [id] Result identifier
  /// [message] Migration progress message
  /// [numberOfObjects] Number of objects
  /// [numberOfObjectsCompleted] Number of successfully completed objects
  /// [objectSummary] Summary of object results in the migration
  /// [resultPrefix] Wildcard string prefix to use for querying all sub-tem results of the item
  /// [resultType] Result type
  /// [stage] Migration stage that this database is in
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [statusMessage] Status message
  MigrateSqlServerSqlDbTaskOutputDatabaseLevelResponse({
    required this.databaseName,
    required this.endedOn,
    required this.errorCount,
    required this.errorPrefix,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.message,
    required this.numberOfObjects,
    required this.numberOfObjectsCompleted,
    required this.objectSummary,
    required this.resultPrefix,
    required this.resultType,
    required this.stage,
    required this.startedOn,
    required this.state,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'endedOn': endedOn,
      'errorCount': errorCount,
      'errorPrefix': errorPrefix,
      'exceptionsAndWarnings': pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(exceptionsAndWarnings, (value) => value.toMap()),
      'id': id,
      'message': message,
      'numberOfObjects': numberOfObjects,
      'numberOfObjectsCompleted': numberOfObjectsCompleted,
      'objectSummary': pulumi.Input.encodeMapValues<DataItemMigrationSummaryResultResponse, Map<String, dynamic>>(objectSummary, (value) => value.toMap()),
      'resultPrefix': resultPrefix,
      'resultType': resultType,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory MigrateSqlServerSqlDbTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskOutputDatabaseLevelResponse(
      databaseName: map['databaseName'] as String,
      endedOn: map['endedOn'] as String,
      errorCount: map['errorCount'] as double,
      errorPrefix: map['errorPrefix'] as String,
      exceptionsAndWarnings: pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings'], (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      message: map['message'] as String,
      numberOfObjects: map['numberOfObjects'] as double,
      numberOfObjectsCompleted: map['numberOfObjectsCompleted'] as double,
      objectSummary: pulumi.Input.decodeMapValues<DataItemMigrationSummaryResultResponse>(map['objectSummary'], (value) => DataItemMigrationSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      resultPrefix: map['resultPrefix'] as String,
      resultType: map['resultType'] as String,
      stage: map['stage'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

