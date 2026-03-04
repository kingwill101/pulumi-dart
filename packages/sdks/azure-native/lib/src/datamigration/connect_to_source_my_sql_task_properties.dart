// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_my_sql_task_input.dart';

/// Properties for the task that validates MySQL database connection
class ConnectToSourceMySqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;

  /// Task input
  final pulumi.Input<ConnectToSourceMySqlTaskInput>? input;

  /// Task type.
  /// Expected value is 'ConnectToSource.MySql'.
  final pulumi.Input<String> taskType;

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
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectToSourceMySqlTaskInput,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToSourceMySqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceMySqlTaskProperties(
      clientData: (() {
        final guardedValue = map['clientData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectToSourceMySqlTaskInput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
