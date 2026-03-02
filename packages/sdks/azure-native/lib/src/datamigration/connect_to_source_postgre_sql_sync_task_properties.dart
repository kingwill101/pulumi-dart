// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_postgre_sql_sync_task_input.dart';

/// Properties for the task that validates connection to PostgreSQL server and source server requirements for online migration
class ConnectToSourcePostgreSqlSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<ConnectToSourcePostgreSqlSyncTaskInput>? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.PostgreSql.Sync'.
  final pulumi.Input<String> taskType;

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
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToSourcePostgreSqlSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToSourcePostgreSqlSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourcePostgreSqlSyncTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData'] as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (ConnectToSourcePostgreSqlSyncTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

