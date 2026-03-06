// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input.dart';
import 'sql_connection_info.dart';

/// Input for task that validates migration input for SQL sync migrations
class ValidateSyncMigrationInputSqlServerTaskInput {
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlDbSyncDatabaseInput>> selectedDatabases;
  /// Information for connecting to source SQL server
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [ValidateSyncMigrationInputSqlServerTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source SQL server
  /// [targetConnectionInfo] Information for connecting to target
  const ValidateSyncMigrationInputSqlServerTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlDbSyncDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ValidateSyncMigrationInputSqlServerTaskInput.fromMap(Map<String, dynamic> map) {
    return ValidateSyncMigrationInputSqlServerTaskInput(
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInput>(map['selectedDatabases']!, (value) => MigrateSqlServerSqlDbSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

