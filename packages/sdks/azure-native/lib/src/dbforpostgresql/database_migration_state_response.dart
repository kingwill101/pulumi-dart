// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration state of a database.
class DatabaseMigrationStateResponse {
  /// Change Data Capture applied changes counter.
  final pulumi.Input<int>? appliedChanges;
  /// Change Data Capture delete counter.
  final pulumi.Input<int>? cdcDeleteCounter;
  /// Change Data Capture insert counter.
  final pulumi.Input<int>? cdcInsertCounter;
  /// Change Data Capture update counter.
  final pulumi.Input<int>? cdcUpdateCounter;
  /// Name of database.
  final pulumi.Input<String>? databaseName;
  /// End time of a migration state.
  final pulumi.Input<String>? endedOn;
  /// Number of tables loaded during the migration of a database.
  final pulumi.Input<int>? fullLoadCompletedTables;
  /// Number of tables encountering errors during the migration of a database.
  final pulumi.Input<int>? fullLoadErroredTables;
  /// Number of tables loading during the migration of a database.
  final pulumi.Input<int>? fullLoadLoadingTables;
  /// Number of tables queued for the migration of a database.
  final pulumi.Input<int>? fullLoadQueuedTables;
  /// Change Data Capture incoming changes counter.
  final pulumi.Input<int>? incomingChanges;
  /// Lag in seconds between source and target during online phase.
  final pulumi.Input<int>? latency;
  /// Error message, if any, for the migration state.
  final pulumi.Input<String>? message;
  /// Migration operation of a database.
  final pulumi.Input<String>? migrationOperation;
  /// Migration state of a database.
  final pulumi.Input<String>? migrationState;
  /// Start time of a migration state.
  final pulumi.Input<String>? startedOn;

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
      appliedChanges: (() { final guardedValue = map['appliedChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cdcDeleteCounter: (() { final guardedValue = map['cdcDeleteCounter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cdcInsertCounter: (() { final guardedValue = map['cdcInsertCounter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cdcUpdateCounter: (() { final guardedValue = map['cdcUpdateCounter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endedOn: (() { final guardedValue = map['endedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullLoadCompletedTables: (() { final guardedValue = map['fullLoadCompletedTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fullLoadErroredTables: (() { final guardedValue = map['fullLoadErroredTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fullLoadLoadingTables: (() { final guardedValue = map['fullLoadLoadingTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fullLoadQueuedTables: (() { final guardedValue = map['fullLoadQueuedTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      incomingChanges: (() { final guardedValue = map['incomingChanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      latency: (() { final guardedValue = map['latency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationOperation: (() { final guardedValue = map['migrationOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationState: (() { final guardedValue = map['migrationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedOn: (() { final guardedValue = map['startedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

