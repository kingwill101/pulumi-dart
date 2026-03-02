// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_sql_server_task_input.dart';

/// Properties for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<ConnectToSourceSqlServerTaskInput>? input;
  /// Task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'ConnectToSource.SqlServer'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToSourceSqlServerTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskId] Task id
  /// [taskType] Task type.
  ConnectToSourceSqlServerTaskProperties({
    this.clientData,
    this.input,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToSourceSqlServerTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory ConnectToSourceSqlServerTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (ConnectToSourceSqlServerTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

