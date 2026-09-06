// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_oracle_azure_db_postgre_sql_sync_task_input.dart';

/// Properties for the task that migrates Oracle to Azure Database for PostgreSQL for online migrations
class MigrateOracleAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Task input
  final pulumi.Input<MigrateOracleAzureDbPostgreSqlSyncTaskInput?>? input;
  /// Task type.
  /// Expected value is 'Migrate.Oracle.AzureDbForPostgreSql.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateOracleAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  const MigrateOracleAzureDbForPostgreSqlSyncTaskProperties({
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

  factory MigrateOracleAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return MigrateOracleAzureDbForPostgreSqlSyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateOracleAzureDbPostgreSqlSyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
