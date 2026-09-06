// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_sql_misync_task_input.dart';

/// Properties for the task that validates connection to Azure SQL Database Managed Instance
class ConnectToTargetSqlMISyncTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Task input
  final pulumi.Input<ConnectToTargetSqlMISyncTaskInput?>? input;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureSqlDbMI.Sync.LRS'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToTargetSqlMISyncTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  const ConnectToTargetSqlMISyncTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToTargetSqlMISyncTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory ConnectToTargetSqlMISyncTaskProperties.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMISyncTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectToTargetSqlMISyncTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
