// ignore_for_file: unused_element, unnecessary_cast


class MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevelResponse {
  /// Number of applied changes
  final double appliedChanges;
  /// Number of cdc deletes
  final double cdcDeleteCounter;
  /// Number of cdc inserts
  final double cdcInsertCounter;
  /// Number of cdc updates
  final double cdcUpdateCounter;
  /// Name of the database
  final String databaseName;
  /// Migration end time
  final String endedOn;
  /// Number of tables completed in full load
  final double fullLoadCompletedTables;
  /// Number of tables errored in full load
  final double fullLoadErroredTables;
  /// Number of tables loading in full load
  final double fullLoadLoadingTables;
  /// Number of tables queued in full load
  final double fullLoadQueuedTables;
  /// Result identifier
  final String id;
  /// Number of incoming changes
  final double incomingChanges;
  /// Indicates if initial load (full load) has been completed
  final bool initializationCompleted;
  /// CDC apply latency
  final double latency;
  /// Migration state that this database is in
  final String migrationState;
  /// Result type
  /// Expected value is 'DatabaseLevelOutput'.
  final String resultType;
  /// Migration start time
  final String startedOn;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevelResponse].
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
  MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevelResponse({
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

  factory MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseLevelResponse(
      appliedChanges: map['appliedChanges'] as double,
      cdcDeleteCounter: map['cdcDeleteCounter'] as double,
      cdcInsertCounter: map['cdcInsertCounter'] as double,
      cdcUpdateCounter: map['cdcUpdateCounter'] as double,
      databaseName: map['databaseName'] as String,
      endedOn: map['endedOn'] as String,
      fullLoadCompletedTables: map['fullLoadCompletedTables'] as double,
      fullLoadErroredTables: map['fullLoadErroredTables'] as double,
      fullLoadLoadingTables: map['fullLoadLoadingTables'] as double,
      fullLoadQueuedTables: map['fullLoadQueuedTables'] as double,
      id: map['id'] as String,
      incomingChanges: map['incomingChanges'] as double,
      initializationCompleted: map['initializationCompleted'] as bool,
      latency: map['latency'] as double,
      migrationState: map['migrationState'] as String,
      resultType: map['resultType'] as String,
      startedOn: map['startedOn'] as String,
    );
  }
}

