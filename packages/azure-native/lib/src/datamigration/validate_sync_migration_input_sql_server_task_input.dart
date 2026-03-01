// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input.dart';
import 'sql_connection_info.dart';

/// Input for task that validates migration input for SQL sync migrations
class ValidateSyncMigrationInputSqlServerTaskInput {
  /// Databases to migrate
  final List<MigrateSqlServerSqlDbSyncDatabaseInput> selectedDatabases;
  /// Information for connecting to source SQL server
  final SqlConnectionInfo sourceConnectionInfo;
  /// Information for connecting to target
  final SqlConnectionInfo targetConnectionInfo;

  /// Creates a new [ValidateSyncMigrationInputSqlServerTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source SQL server
  /// [targetConnectionInfo] Information for connecting to target
  ValidateSyncMigrationInputSqlServerTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory ValidateSyncMigrationInputSqlServerTaskInput.fromMap(Map<String, dynamic> map) {
    return ValidateSyncMigrationInputSqlServerTaskInput(
      selectedDatabases: pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInput>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: SqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

