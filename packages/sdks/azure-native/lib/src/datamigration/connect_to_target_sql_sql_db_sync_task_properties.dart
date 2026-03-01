// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_target_sql_sql_db_sync_task_input.dart';

/// Properties for the task that validates connection to SQL DB and target server requirements for online migration
class ConnectToTargetSqlSqlDbSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToTargetSqlSqlDbSyncTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.SqlDb.Sync'.
  final String taskType;

  /// Creates a new [ConnectToTargetSqlSqlDbSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToTargetSqlSqlDbSyncTaskProperties({
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

  factory ConnectToTargetSqlSqlDbSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlSqlDbSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToTargetSqlSqlDbSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

