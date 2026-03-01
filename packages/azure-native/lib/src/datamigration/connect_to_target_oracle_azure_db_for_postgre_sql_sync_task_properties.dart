// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates connection to Azure Database For PostgreSQL server and target server requirements for online migration for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.Oracle.AzureDbForPostgreSql.Sync'.
  final String taskType;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?input == null ? null : input!.toMap(),
      'taskType': taskType,
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

