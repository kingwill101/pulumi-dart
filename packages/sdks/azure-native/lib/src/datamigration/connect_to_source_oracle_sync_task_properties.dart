// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_oracle_sync_task_input.dart';

/// Properties for the task that validates Oracle database connection
class ConnectToSourceOracleSyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Task input
  final pulumi.Input<ConnectToSourceOracleSyncTaskInput>? input;
  /// Task type.
  /// Expected value is 'ConnectToSource.Oracle.Sync'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToSourceOracleSyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  ConnectToSourceOracleSyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToSourceOracleSyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToSourceOracleSyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceOracleSyncTaskProperties(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      input: map['input'] == null ? null : (ConnectToSourceOracleSyncTaskInput.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

