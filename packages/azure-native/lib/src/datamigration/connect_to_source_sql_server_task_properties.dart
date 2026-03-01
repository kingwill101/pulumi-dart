// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_source_sql_server_task_input.dart';

/// Properties for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToSourceSqlServerTaskInput? input;
  /// Task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'ConnectToSource.SqlServer'.
  final String taskType;

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
      'input': ?input == null ? null : input!.toMap(),
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory ConnectToSourceSqlServerTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToSourceSqlServerTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

