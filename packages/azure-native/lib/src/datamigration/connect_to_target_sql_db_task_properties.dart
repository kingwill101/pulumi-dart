// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_sql_db_task_input.dart';

/// Properties for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// DateTime in UTC when the task was created
  final String? createdOn;
  /// Task input
  final ConnectToTargetSqlDbTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.SqlDb'.
  final String taskType;

  /// Creates a new [ConnectToTargetSqlDbTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [createdOn] DateTime in UTC when the task was created
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetSqlDbTaskProperties({
    this.clientData,
    this.createdOn,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'createdOn': ?createdOn,
      'input': ?input == null ? null : input!.toMap(),
      'taskType': taskType,
    };
  }

  factory ConnectToTargetSqlDbTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlDbTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      createdOn: map['createdOn'] == null ? null : map['createdOn'] as String,
      input: map['input'] == null ? null : ConnectToTargetSqlDbTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

