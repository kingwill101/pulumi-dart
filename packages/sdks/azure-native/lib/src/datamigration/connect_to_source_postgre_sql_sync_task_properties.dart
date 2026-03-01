// ignore_for_file: unused_element, unnecessary_cast

import 'connect_to_source_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates connection to PostgreSQL server and source server requirements for online migration
class ConnectToSourcePostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final ConnectToSourcePostgreSqlSyncTaskInput? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.PostgreSql.Sync'.
  final String taskType;

  /// Creates a new [ConnectToSourcePostgreSqlSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToSourcePostgreSqlSyncTaskProperties({
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

  factory ConnectToSourcePostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourcePostgreSqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : ConnectToSourcePostgreSqlSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

