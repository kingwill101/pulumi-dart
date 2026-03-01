// ignore_for_file: unused_element, unnecessary_cast


/// Migration state of a database.
class DatabaseMigrationStateResponse {
  /// Change Data Capture applied changes counter.
  final int? appliedChanges;
  /// Change Data Capture delete counter.
  final int? cdcDeleteCounter;
  /// Change Data Capture insert counter.
  final int? cdcInsertCounter;
  /// Change Data Capture update counter.
  final int? cdcUpdateCounter;
  /// Name of database.
  final String? databaseName;
  /// End time of a migration state.
  final String? endedOn;
  /// Number of tables loaded during the migration of a database.
  final int? fullLoadCompletedTables;
  /// Number of tables encountering errors during the migration of a database.
  final int? fullLoadErroredTables;
  /// Number of tables loading during the migration of a database.
  final int? fullLoadLoadingTables;
  /// Number of tables queued for the migration of a database.
  final int? fullLoadQueuedTables;
  /// Change Data Capture incoming changes counter.
  final int? incomingChanges;
  /// Lag in seconds between source and target during online phase.
  final int? latency;
  /// Error message, if any, for the migration state.
  final String? message;
  /// Migration operation of a database.
  final String? migrationOperation;
  /// Migration state of a database.
  final String? migrationState;
  /// Start time of a migration state.
  final String? startedOn;

  /// Creates a new [DatabaseMigrationStateResponse].
  /// [appliedChanges] Change Data Capture applied changes counter.
  /// [cdcDeleteCounter] Change Data Capture delete counter.
  /// [cdcInsertCounter] Change Data Capture insert counter.
  /// [cdcUpdateCounter] Change Data Capture update counter.
  /// [databaseName] Name of database.
  /// [endedOn] End time of a migration state.
  /// [fullLoadCompletedTables] Number of tables loaded during the migration of a database.
  /// [fullLoadErroredTables] Number of tables encountering errors during the migration of a database.
  /// [fullLoadLoadingTables] Number of tables loading during the migration of a database.
  /// [fullLoadQueuedTables] Number of tables queued for the migration of a database.
  /// [incomingChanges] Change Data Capture incoming changes counter.
  /// [latency] Lag in seconds between source and target during online phase.
  /// [message] Error message, if any, for the migration state.
  /// [migrationOperation] Migration operation of a database.
  /// [migrationState] Migration state of a database.
  /// [startedOn] Start time of a migration state.
  DatabaseMigrationStateResponse({
    this.appliedChanges,
    this.cdcDeleteCounter,
    this.cdcInsertCounter,
    this.cdcUpdateCounter,
    this.databaseName,
    this.endedOn,
    this.fullLoadCompletedTables,
    this.fullLoadErroredTables,
    this.fullLoadLoadingTables,
    this.fullLoadQueuedTables,
    this.incomingChanges,
    this.latency,
    this.message,
    this.migrationOperation,
    this.migrationState,
    this.startedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedChanges': ?appliedChanges,
      'cdcDeleteCounter': ?cdcDeleteCounter,
      'cdcInsertCounter': ?cdcInsertCounter,
      'cdcUpdateCounter': ?cdcUpdateCounter,
      'databaseName': ?databaseName,
      'endedOn': ?endedOn,
      'fullLoadCompletedTables': ?fullLoadCompletedTables,
      'fullLoadErroredTables': ?fullLoadErroredTables,
      'fullLoadLoadingTables': ?fullLoadLoadingTables,
      'fullLoadQueuedTables': ?fullLoadQueuedTables,
      'incomingChanges': ?incomingChanges,
      'latency': ?latency,
      'message': ?message,
      'migrationOperation': ?migrationOperation,
      'migrationState': ?migrationState,
      'startedOn': ?startedOn,
    };
  }

  factory DatabaseMigrationStateResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseMigrationStateResponse(
      appliedChanges: map['appliedChanges'] == null ? null : map['appliedChanges'] as int,
      cdcDeleteCounter: map['cdcDeleteCounter'] == null ? null : map['cdcDeleteCounter'] as int,
      cdcInsertCounter: map['cdcInsertCounter'] == null ? null : map['cdcInsertCounter'] as int,
      cdcUpdateCounter: map['cdcUpdateCounter'] == null ? null : map['cdcUpdateCounter'] as int,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      endedOn: map['endedOn'] == null ? null : map['endedOn'] as String,
      fullLoadCompletedTables: map['fullLoadCompletedTables'] == null ? null : map['fullLoadCompletedTables'] as int,
      fullLoadErroredTables: map['fullLoadErroredTables'] == null ? null : map['fullLoadErroredTables'] as int,
      fullLoadLoadingTables: map['fullLoadLoadingTables'] == null ? null : map['fullLoadLoadingTables'] as int,
      fullLoadQueuedTables: map['fullLoadQueuedTables'] == null ? null : map['fullLoadQueuedTables'] as int,
      incomingChanges: map['incomingChanges'] == null ? null : map['incomingChanges'] as int,
      latency: map['latency'] == null ? null : map['latency'] as int,
      message: map['message'] == null ? null : map['message'] as String,
      migrationOperation: map['migrationOperation'] == null ? null : map['migrationOperation'] as String,
      migrationState: map['migrationState'] == null ? null : map['migrationState'] as String,
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
    );
  }
}

