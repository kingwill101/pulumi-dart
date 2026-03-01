// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_source_my_sql_task_input.dart';

/// Properties for the task that validates MySQL database connection
class ConnectToSourceMySqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToSourceMySqlTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.MySql'.
  final String taskType;

  /// Creates a new [ConnectToSourceMySqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToSourceMySqlTaskProperties({
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

  factory ConnectToSourceMySqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceMySqlTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToSourceMySqlTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

