// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_azure_db_for_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates connection to Azure Database For PostgreSQL server and target server requirements for online migration
class ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<ConnectToTargetAzureDbForPostgreSqlSyncTaskInput>? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureDbForPostgreSql.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToTargetAzureDbForPostgreSqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (ConnectToTargetAzureDbForPostgreSqlSyncTaskInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

