// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_oracle_azure_db_postgre_sql_sync_database_input_response.dart';
import 'oracle_connection_info_response.dart';
import 'postgre_sql_connection_info_response.dart';

/// Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
class MigrateOracleAzureDbPostgreSqlSyncTaskInputResponse {
  /// Databases to migrate
  final pulumi.Input<List<MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse>> selectedDatabases;
  /// Connection information for source Oracle
  final pulumi.Input<OracleConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target Azure Database for PostgreSQL
  final pulumi.Input<PostgreSqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [MigrateOracleAzureDbPostgreSqlSyncTaskInputResponse].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source Oracle
  /// [targetConnectionInfo] Connection information for target Azure Database for PostgreSQL
  MigrateOracleAzureDbPostgreSqlSyncTaskInputResponse({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<OracleConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<PostgreSqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateOracleAzureDbPostgreSqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbPostgreSqlSyncTaskInputResponse(
      selectedDatabases: (pulumi.Input.decodeList<MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse>(map['selectedDatabases'], (value) => MigrateOracleAzureDbPostgreSqlSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceConnectionInfo: (OracleConnectionInfoResponse.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      targetConnectionInfo: (PostgreSqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

