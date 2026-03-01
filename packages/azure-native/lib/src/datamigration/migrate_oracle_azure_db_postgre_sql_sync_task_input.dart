// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_oracle_azure_db_postgre_sql_sync_database_input.dart';
import 'oracle_connection_info.dart';
import 'postgre_sql_connection_info.dart';

/// Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
class MigrateOracleAzureDbPostgreSqlSyncTaskInput {
  /// Databases to migrate
  final List<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput> selectedDatabases;
  /// Connection information for source Oracle
  final OracleConnectionInfo sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL
  final PostgreSqlConnectionInfo targetConnectionInfo;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source Oracle
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL
  MigrateOracleAzureDbPostgreSqlSyncTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.encodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput, Map<String, dynamic>>(selectedDatabases, (value) => value.toMap()),
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'targetConnectionInfo': targetConnectionInfo.toMap(),
    };
  }

  factory MigrateOracleAzureDbPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncTaskInput(
      selectedDatabases: pulumi.Input.decodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput>(map['selectedDatabases'], (value) => MigrateOracleAzureDbPostgreSqlSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>())),
      sourceConnectionInfo: OracleConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      targetConnectionInfo: PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

