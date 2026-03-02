// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_source_sql_server_task_input_response.dart';
import 'connect_to_source_sql_server_task_output_agent_job_level_response.dart';
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>> commands;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<ConnectToSourceSqlServerTaskInputResponse>? input;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// Task id
  final pulumi.Input<String>? taskId;
  /// Task type.
  /// Expected value is 'ConnectToSource.SqlServer'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToSourceSqlServerTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskId] Task id
  /// [taskType] Task type.
  ConnectToSourceSqlServerTaskPropertiesResponse({
    this.clientData,
    required this.commands,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
    this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'commands': pulumi.Input.mapInputValue<List<MigrateMISyncCompleteCommandPropertiesResponse>, List<Map<String, dynamic>>>(commands, (value) => pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<ConnectToSourceSqlServerTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<List<ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory ConnectToSourceSqlServerTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : ((map['clientData']! as Map).cast<String, String>()).input(),
      commands: (pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (ConnectToSourceSqlServerTaskInputResponse.fromMap((map['input']! as Map).cast<String, dynamic>())).input(),
      output: (pulumi.Input.decodeList<ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse>(map['output'], (value) => ConnectToSourceSqlServerTaskOutputAgentJobLevelResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: (map['state'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId']! as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

