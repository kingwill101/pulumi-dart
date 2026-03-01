// ignore_for_file: unused_element, unnecessary_cast

import 'get_user_tables_sql_task_input.dart';

/// Properties for the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final GetUserTablesSqlTaskInput? input;
  /// Task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'GetUserTables.Sql'.
  final String taskType;

  /// Creates a new [GetUserTablesSqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskId] Task id
  /// [taskType] Task type.
  GetUserTablesSqlTaskProperties({
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

  factory GetUserTablesSqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : GetUserTablesSqlTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

