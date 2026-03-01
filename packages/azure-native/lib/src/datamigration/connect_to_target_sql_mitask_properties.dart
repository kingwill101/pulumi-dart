// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_sql_mitask_input.dart';

/// Properties for the task that validates connection to Azure SQL Database Managed Instance
class ConnectToTargetSqlMITaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToTargetSqlMITaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureSqlDbMI'.
  final String taskType;

  /// Creates a new [ConnectToTargetSqlMITaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetSqlMITaskProperties({
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

  factory ConnectToTargetSqlMITaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMITaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToTargetSqlMITaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

