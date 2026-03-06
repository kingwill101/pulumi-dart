// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_my_sql_azure_db_for_my_sql_sync_database_input_response.dart';
import 'my_sql_connection_info_response.dart';

/// Input for the task that migrates MySQL databases to Azure Database for MySQL for online migrations
class MigrateMySqlAzureDbForMySqlSyncTaskInputResponse {
  /// Databases to migrate
  final pulumi.Input<List<MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse>> selectedDatabases;
  /// Connection information for source MySQL
  final pulumi.Input<MySqlConnectionInfoResponse> sourceConnectionInfo;
  /// Connection information for target Azure Database for MySQL
  final pulumi.Input<MySqlConnectionInfoResponse> targetConnectionInfo;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskInputResponse].
  /// [selectedDatabases] Databases to migrate
  /// [sourceConnectionInfo] Connection information for source MySQL
  /// [targetConnectionInfo] Connection information for target Azure Database for MySQL
  const MigrateMySqlAzureDbForMySqlSyncTaskInputResponse({
    required this.selectedDatabases,
    required this.sourceConnectionInfo,
    required this.targetConnectionInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedDatabases': pulumi.Input.mapInputValue<List<MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse>, List<Map<String, dynamic>>>(selectedDatabases, (value) => pulumi.Input.encodeList<MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'targetConnectionInfo': pulumi.Input.mapInputValue<MySqlConnectionInfoResponse, Map<String, dynamic>>(targetConnectionInfo, (value) => value.toMap()),
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskInputResponse(
      selectedDatabases: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse>(map['selectedDatabases']!, (value) => MigrateMySqlAzureDbForMySqlSyncDatabaseInputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sourceConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfoResponse.fromMap((map['sourceConnectionInfo']! as Map).cast<String, dynamic>())),
      targetConnectionInfo: pulumi.Input.fromValue(MySqlConnectionInfoResponse.fromMap((map['targetConnectionInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

