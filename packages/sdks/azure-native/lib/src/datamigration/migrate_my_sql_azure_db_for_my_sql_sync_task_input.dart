// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_sync_database_input.dart';
import 'my_sql_connection_info.dart';

/// Input for the task that migrates MySQL databases to Azure Database for MySQL for online migrations
class MigrateMySqlAzureDbForMySqlSyncTaskInput {
  /// Databases to migrate
  final pulumi.Input<List<MigrateMySqlAzureDbForMySqlSyncDatabaseInput>> selectedDatabases;
  /// Connection information for source MySQL
  final pulumi.Input<MySqlConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL
  final pulumi.Input<MySqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source MySQL
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL
  MigrateMySqlAzureDbForMySqlSyncTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateMySqlAzureDbForMySqlSyncDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateMySqlAzureDbForMySqlSyncDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskInput(
      selectedDatabases: (pulumi.Input.decodeList<MigrateMySqlAzureDbForMySqlSyncDatabaseInput>(map['selectedDatabases'], (value) => MigrateMySqlAzureDbForMySqlSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (MySqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (MySqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

