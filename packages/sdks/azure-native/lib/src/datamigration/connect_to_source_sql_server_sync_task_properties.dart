// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_source_sql_server_task_input.dart';

/// Properties for the task that validates connection to SQL Server and source server requirements for online migration
class ConnectToSourceSqlServerSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToSourceSqlServerTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.SqlServer.Sync'.
  final String taskType;

  /// Creates a new [ConnectToSourceSqlServerSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToSourceSqlServerSyncTaskProperties({
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

  factory ConnectToSourceSqlServerSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToSourceSqlServerTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

