// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_ssis_task_input_response.dart';
import 'odata_error_response.dart';

/// Properties for task that migrates SSIS packages from SQL Server databases to Azure SQL Database Managed Instance.
class MigrateSsisTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<dynamic>> commands;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<MigrateSsisTaskInputResponse?>? input;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<dynamic>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// Task type.
  /// Expected value is 'Migrate.Ssis'.
  final pulumi.Input<String> taskType;

  /// Creates a new [MigrateSsisTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  const MigrateSsisTaskPropertiesResponse({
    this.clientData,
    required this.commands,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': commands,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSsisTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': output,
      'state': state,
      'taskType': taskType,
    };
  }

  factory MigrateSsisTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSsisTaskPropertiesResponse(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<dynamic>()),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateSsisTaskInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: pulumi.Input.fromValue((map['output'] as List).cast<dynamic>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
