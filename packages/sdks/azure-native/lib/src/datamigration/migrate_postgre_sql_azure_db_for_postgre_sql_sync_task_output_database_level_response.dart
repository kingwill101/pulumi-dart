// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevelResponse {
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

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevelResponse].
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
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevelResponse({
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

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevelResponse(
      appliedChanges: (map['appliedChanges'] as double).input(),
      cdcDeleteCounter: (map['cdcDeleteCounter'] as double).input(),
      cdcInsertCounter: (map['cdcInsertCounter'] as double).input(),
      cdcUpdateCounter: (map['cdcUpdateCounter'] as double).input(),
      databaseName: (map['databaseName'] as String).input(),
      endedOn: (map['endedOn'] as String).input(),
      fullLoadCompletedTables: (map['fullLoadCompletedTables'] as double).input(),
      fullLoadErroredTables: (map['fullLoadErroredTables'] as double).input(),
      fullLoadLoadingTables: (map['fullLoadLoadingTables'] as double).input(),
      fullLoadQueuedTables: (map['fullLoadQueuedTables'] as double).input(),
      id: (map['id'] as String).input(),
      incomingChanges: (map['incomingChanges'] as double).input(),
      initializationCompleted: (map['initializationCompleted'] as bool).input(),
      latency: (map['latency'] as double).input(),
      migrationState: (map['migrationState'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
    );
  }
}

