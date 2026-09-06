// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevelResponse {
  /// Number of applied changes
  final pulumi.Input<double> appliedChanges;
  /// Number of cdc deletes
  final pulumi.Input<double> cdcDeleteCounter;
  /// Number of cdc inserts
  final pulumi.Input<double> cdcInsertCounter;
  /// Number of cdc updates
  final pulumi.Input<double> cdcUpdateCounter;
  /// Name of the database
  final pulumi.Input<String> databaseName;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Number of tables completed in full load
  final pulumi.Input<double> fullLoadCompletedTables;
  /// Number of tables errored in full load
  final pulumi.Input<double> fullLoadErroredTables;
  /// Number of tables loading in full load
  final pulumi.Input<double> fullLoadLoadingTables;
  /// Number of tables queued in full load
  final pulumi.Input<double> fullLoadQueuedTables;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Number of incoming changes
  final pulumi.Input<double> incomingChanges;
  /// Indicates if initial load (full load) has been completed
  final pulumi.Input<bool> initializationCompleted;
  /// CDC apply latency
  final pulumi.Input<double> latency;
  /// Migration state that this database is in
  final pulumi.Input<String> migrationState;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Migration start time
  final pulumi.Input<String> startedOn;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevelResponse].
  /// [appliedChanges] Number of applied changes
  /// [cdcDeleteCounter] Number of cdc deletes
  /// [cdcInsertCounter] Number of cdc inserts
  /// [cdcUpdateCounter] Number of cdc updates
  /// [databaseName] Name of the database
  /// [endedOn] Migration end time
  /// [fullLoadCompletedTables] Number of tables completed in full load
  /// [fullLoadErroredTables] Number of tables errored in full load
  /// [fullLoadLoadingTables] Number of tables loading in full load
  /// [fullLoadQueuedTables] Number of tables queued in full load
  /// [id] Result identifier
  /// [incomingChanges] Number of incoming changes
  /// [initializationCompleted] Indicates if initial load (full load) has been completed
  /// [latency] CDC apply latency
  /// [migrationState] Migration state that this database is in
  /// [resultType] Result type
  /// [startedOn] Migration start time
  const MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevelResponse({
    required this.appliedChanges,
    required this.cdcDeleteCounter,
    required this.cdcInsertCounter,
    required this.cdcUpdateCounter,
    required this.databaseName,
    required this.endedOn,
    required this.fullLoadCompletedTables,
    required this.fullLoadErroredTables,
    required this.fullLoadLoadingTables,
    required this.fullLoadQueuedTables,
    required this.id,
    required this.incomingChanges,
    required this.initializationCompleted,
    required this.latency,
    required this.migrationState,
    required this.resultType,
    required this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedChanges': appliedChanges,
      'cdcDeleteCounter': cdcDeleteCounter,
      'cdcInsertCounter': cdcInsertCounter,
      'cdcUpdateCounter': cdcUpdateCounter,
      'databaseName': databaseName,
      'endedOn': endedOn,
      'fullLoadCompletedTables': fullLoadCompletedTables,
      'fullLoadErroredTables': fullLoadErroredTables,
      'fullLoadLoadingTables': fullLoadLoadingTables,
      'fullLoadQueuedTables': fullLoadQueuedTables,
      'id': id,
      'incomingChanges': incomingChanges,
      'initializationCompleted': initializationCompleted,
      'latency': latency,
      'migrationState': migrationState,
      'resultType': resultType,
      'startedOn': startedOn,
    };
  }

  factory MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskOutputDatabaseLevelResponse(
      appliedChanges: pulumi.Input.fromValue((map['appliedChanges'] as num).toDouble()),
      cdcDeleteCounter: pulumi.Input.fromValue((map['cdcDeleteCounter'] as num).toDouble()),
      cdcInsertCounter: pulumi.Input.fromValue((map['cdcInsertCounter'] as num).toDouble()),
      cdcUpdateCounter: pulumi.Input.fromValue((map['cdcUpdateCounter'] as num).toDouble()),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      fullLoadCompletedTables: pulumi.Input.fromValue((map['fullLoadCompletedTables'] as num).toDouble()),
      fullLoadErroredTables: pulumi.Input.fromValue((map['fullLoadErroredTables'] as num).toDouble()),
      fullLoadLoadingTables: pulumi.Input.fromValue((map['fullLoadLoadingTables'] as num).toDouble()),
      fullLoadQueuedTables: pulumi.Input.fromValue((map['fullLoadQueuedTables'] as num).toDouble()),
      id: pulumi.Input.fromValue(map['id'] as String),
      incomingChanges: pulumi.Input.fromValue((map['incomingChanges'] as num).toDouble()),
      initializationCompleted: pulumi.Input.fromValue(map['initializationCompleted'] as bool),
      latency: pulumi.Input.fromValue((map['latency'] as num).toDouble()),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
    );
  }
}
