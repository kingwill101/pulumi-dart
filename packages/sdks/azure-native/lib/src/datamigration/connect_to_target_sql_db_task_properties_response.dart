// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_sql_db_task_input_response.dart';
import 'connect_to_target_sql_db_task_output_response.dart';
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>> commands;
  /// DateTime in UTC when the task was created
  final pulumi.Input<String>? createdOn;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<ConnectToTargetSqlDbTaskInputResponse>? input;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<ConnectToTargetSqlDbTaskOutputResponse>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// Task type.
  /// Expected value is 'ConnectToTarget.SqlDb'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToTargetSqlDbTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [createdOn] DateTime in UTC when the task was created
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  ConnectToTargetSqlDbTaskPropertiesResponse({
    this.clientData,
    required this.commands,
    this.createdOn,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': pulumi.Input.mapInputValue<List<MigrateMISyncCompleteCommandPropertiesResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdOn': ?createdOn,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToTargetSqlDbTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<List<ConnectToTargetSqlDbTaskOutputResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<ConnectToTargetSqlDbTaskOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'taskType': taskType,
    };
  }

  factory ConnectToTargetSqlDbTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlDbTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      commands: (pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn']! as String).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (ConnectToTargetSqlDbTaskInputResponse.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      output: (pulumi.Input.decodeList<ConnectToTargetSqlDbTaskOutputResponse>(map['output'], (value) => ConnectToTargetSqlDbTaskOutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: (map['state'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

