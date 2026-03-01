// ignore_for_file: unused_element, unnecessary_cast

import 'migrate_oracle_azure_db_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates a migration for Oracle to Azure Database for PostgreSQL for online migrations
class ValidateOracleAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
  final MigrateOracleAzureDbPostgreSqlSyncTaskInput? input;
  /// Task type.
  /// Expected value is 'Validate.Oracle.AzureDbPostgreSql.Sync'.
  final String taskType;

  /// Creates a new [ValidateOracleAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
  /// [taskType] Task type.
  ValidateOracleAzureDbForPostgreSqlSyncTaskProperties({
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

  factory ValidateOracleAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateOracleAzureDbForPostgreSqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : MigrateOracleAzureDbPostgreSqlSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

