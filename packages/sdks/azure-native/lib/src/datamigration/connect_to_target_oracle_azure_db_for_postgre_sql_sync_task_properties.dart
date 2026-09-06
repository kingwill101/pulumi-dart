// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_oracle_azure_db_for_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates connection to Azure Database For PostgreSQL server and target server requirements for online migration for Oracle source.
class ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Task input
  final pulumi.Input<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput?>? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.Oracle.AzureDbForPostgreSql.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  const ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectToTargetOracleAzureDbForPostgreSqlSyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
