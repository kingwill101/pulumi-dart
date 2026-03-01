// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_sql_misync_task_input.dart';

/// Properties for the task that validates connection to Azure SQL Database Managed Instance
class ConnectToTargetSqlMISyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToTargetSqlMISyncTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureSqlDbMI.Sync.LRS'.
  final String taskType;

  /// Creates a new [ConnectToTargetSqlMISyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetSqlMISyncTaskProperties({
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

  factory ConnectToTargetSqlMISyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToTargetSqlMISyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

