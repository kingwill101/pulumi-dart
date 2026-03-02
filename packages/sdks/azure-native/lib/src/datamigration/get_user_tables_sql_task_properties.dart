// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_tables_sql_task_input.dart';

/// Properties for the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<GetUserTablesSqlTaskInput>? input;
  /// Task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'GetUserTables.Sql'.
  final pulumi.Input<String> taskType;

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
      'input': ?pulumi.Input.mapOptionalInputValue<GetUserTablesSqlTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory GetUserTablesSqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (GetUserTablesSqlTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

