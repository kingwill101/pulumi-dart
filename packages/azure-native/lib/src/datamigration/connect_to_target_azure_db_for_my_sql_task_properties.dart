// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_azure_db_for_my_sql_task_input.dart';

/// Properties for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToTargetAzureDbForMySqlTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureDbForMySql'.
  final String taskType;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetAzureDbForMySqlTaskProperties({
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

  factory ConnectToTargetAzureDbForMySqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForMySqlTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToTargetAzureDbForMySqlTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

