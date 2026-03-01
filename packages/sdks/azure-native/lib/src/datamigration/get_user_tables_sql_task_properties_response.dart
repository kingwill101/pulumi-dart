// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_tables_sql_task_input_response.dart';
import 'get_user_tables_sql_task_output_response.dart';
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that collects user tables for the given list of databases
class GetUserTablesSqlTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Array of command properties.
  final List<MigrateMISyncCompleteCommandPropertiesResponse> commands;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Task input
  final GetUserTablesSqlTaskInputResponse? input;
  /// Task output. This is ignored if submitted.
  final List<GetUserTablesSqlTaskOutputResponse> output;
  /// The state of the task. This is ignored if submitted.
  final String state;
  /// Task id
  final String? taskId;
  /// Task type.
  /// Expected value is 'GetUserTables.Sql'.
  final String taskType;

  /// Creates a new [GetUserTablesSqlTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskId] Task id
  /// [taskType] Task type.
  GetUserTablesSqlTaskPropertiesResponse({
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
      'commands': pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'errors': pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'input': ?input == null ? null : input!.toMap(),
      'output': pulumi.Input.encodeList<GetUserTablesSqlTaskOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
      'taskId': ?taskId,
      'taskType': taskType,
    };
  }

  factory GetUserTablesSqlTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesSqlTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      commands: pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : GetUserTablesSqlTaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: pulumi.Input.decodeList<GetUserTablesSqlTaskOutputResponse>(map['output'], (value) => GetUserTablesSqlTaskOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      taskId: map['taskId'] == null ? null : map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

