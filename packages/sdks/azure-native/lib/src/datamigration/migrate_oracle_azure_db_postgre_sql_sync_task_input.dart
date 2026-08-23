// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_oracle_azure_db_postgre_sql_sync_database_input.dart';
import 'oracle_connection_info.dart';
import 'postgre_sql_connection_info.dart';

/// Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
class MigrateOracleAzureDbPostgreSqlSyncTaskInput {
  /// Databases to migrate
  final pulumi.Input<List<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput>> selectedDatabases;
  /// Connection information for source Oracle
  final pulumi.Input<OracleConnectionInfo> sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfo> targetConnectionInfo;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncTaskInput].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source Oracle
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL
  const MigrateOracleAzureDbPostgreSqlSyncTaskInput({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<OracleConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfo, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateOracleAzureDbPostgreSqlSyncTaskInput.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncTaskInput(
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput>(map['selectedDatabases']!, (value) => MigrateOracleAzureDbPostgreSqlSyncDatabaseInput.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(OracleConnectionInfo.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(PostgreSqlConnectionInfo.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
