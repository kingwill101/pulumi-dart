// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_tables_my_sql_task_input.dart';

/// Properties for the task that collects user tables for the given list of databases
class GetUserTablesMySqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<GetUserTablesMySqlTaskInput>? input;
  /// Task type.
  /// Expected value is 'GetUserTablesMySql'.
  final pulumi.Input<String> taskType;

  /// Creates a new [GetUserTablesMySqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  GetUserTablesMySqlTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<GetUserTablesMySqlTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory GetUserTablesMySqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return GetUserTablesMySqlTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (GetUserTablesMySqlTaskInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

