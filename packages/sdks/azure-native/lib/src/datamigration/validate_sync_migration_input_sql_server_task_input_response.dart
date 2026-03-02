// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sql_server_sql_db_sync_database_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for task that validates migration input for SQL sync migrations
class ValidateSyncMigrationInputSqlServerTaskInputResponse {
  /// Databases to migrate
  final pulumi.Input<List<MigrateSqlServerSqlDbSyncDatabaseInputResponse>> selectedDatabases;
  /// Information for connecting to source SQL server
  final pulumi.Input<SqlConnectionInfoResponse> sourceConnectionInfo;
  /// Information for connecting to target
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [ValidateSyncMigrationInputSqlServerTaskInputResponse].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Information for connecting to source SQL server
  /// [targetConnectionInfo] Information for connecting to target
  ValidateSyncMigrationInputSqlServerTaskInputResponse({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateSqlServerSqlDbSyncDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory ValidateSyncMigrationInputSqlServerTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ValidateSyncMigrationInputSqlServerTaskInputResponse(
      selectedDatabases: (pulumi.Input.decodeList<MigrateSqlServerSqlDbSyncDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateSqlServerSqlDbSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

