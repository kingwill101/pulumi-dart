// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_sql_server_task_input.dart';

/// Properties for the task that validates connection to SQL Server and source server requirements for online migration
class ConnectToSourceSqlServerSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<ConnectToSourceSqlServerTaskInput>? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.SqlServer.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToSourceSqlServerSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToSourceSqlServerSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToSourceSqlServerTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToSourceSqlServerSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerSyncTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (ConnectToSourceSqlServerTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

