// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_item_migration_summary_result_response.dart';
import 'reportable_exception_response.dart';

class MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse {
  /// Name of the database
  final pulumi.Input<String> databaseName;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Number of database/object errors.
  final pulumi.Input<double> errorCount;
  /// Wildcard string prefix to use for querying all errors of the item
  final pulumi.Input<String> errorPrefix;
  /// Migration exceptions and warnings.
  final pulumi.Input<List<ReportableExceptionResponse>> exceptionsAndWarnings;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Last time the storage was updated
  final pulumi.Input<String> lastStorageUpdate;
  /// Migration progress message
  final pulumi.Input<String> message;
  /// Number of objects
  final pulumi.Input<double> numberOfObjects;
  /// Number of successfully completed objects
  final pulumi.Input<double> numberOfObjectsCompleted;
  /// Summary of object results in the migration
  final pulumi.Input<Map<String, DataItemMigrationSummaryResultResponse>> objectSummary;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final pulumi.Input<String> resultPrefix;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Migration stage that this database is in
  final pulumi.Input<String> stage;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;
  /// Status message
  final pulumi.Input<String> statusMessage;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse].
  /// [databaseName] Name of the database
  /// [endedOn] Migration end time
  /// [errorCount] Number of database/object errors.
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [exceptionsAndWarnings] Migration exceptions and warnings.
  /// [id] Result identifier
  /// [lastStorageUpdate] Last time the storage was updated
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
  MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse({
    required this.databaseName,
    required this.endedOn,
    required this.errorCount,
    required this.errorPrefix,
    required this.exceptionsAndWarnings,
    required this.id,
    required this.lastStorageUpdate,
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
      'exceptionsAndWarnings': pulumi.Input.mapInputValue<List<ReportableExceptionResponse>, List<Map<String, dynamic>>>(exceptionsAndWarnings, (value) => pulumi.Input.encodeList<ReportableExceptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lastStorageUpdate': lastStorageUpdate,
      'message': message,
      'numberOfObjects': numberOfObjects,
      'numberOfObjectsCompleted': numberOfObjectsCompleted,
      'objectSummary': pulumi.Input.mapInputValue<Map<String, DataItemMigrationSummaryResultResponse>, Map<String, Map<String, dynamic>>>(objectSummary, (value) => pulumi.Input.encodeMapValues<DataItemMigrationSummaryResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resultPrefix': resultPrefix,
      'resultType': resultType,
      'stage': stage,
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskOutputDatabaseLevelResponse(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      errorCount: pulumi.Input.fromValue(map['errorCount'] as double),
      errorPrefix: pulumi.Input.fromValue(map['errorPrefix'] as String),
      exceptionsAndWarnings: pulumi.Input.fromValue(pulumi.Input.decodeList<ReportableExceptionResponse>(map['exceptionsAndWarnings']!, (value) => ReportableExceptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastStorageUpdate: pulumi.Input.fromValue(map['lastStorageUpdate'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      numberOfObjects: pulumi.Input.fromValue(map['numberOfObjects'] as double),
      numberOfObjectsCompleted: pulumi.Input.fromValue(map['numberOfObjectsCompleted'] as double),
      objectSummary: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DataItemMigrationSummaryResultResponse>(map['objectSummary']!, (value) => DataItemMigrationSummaryResultResponse.fromMap((value as Map).cast<String, dynamic>()))),
      resultPrefix: pulumi.Input.fromValue(map['resultPrefix'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}

