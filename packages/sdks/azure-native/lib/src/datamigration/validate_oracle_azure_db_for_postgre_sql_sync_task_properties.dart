// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_oracle_azure_db_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates a migration for Oracle to Azure Database for PostgreSQL for online migrations
class ValidateOracleAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Input for the task that migrates Oracle databases to Azure Database for PostgreSQL for online migrations
  final pulumi.Input<MigrateOracleAzureDbPostgreSqlSyncTaskInput>? input;
  /// Task type.
  /// Expected value is 'Validate.Oracle.AzureDbPostgreSql.Sync'.
  final pulumi.Input<String> taskType;

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
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateOracleAzureDbPostgreSqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ValidateOracleAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ValidateOracleAzureDbForPostgreSqlSyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateOracleAzureDbPostgreSqlSyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}

