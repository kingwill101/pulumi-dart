// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_tables_oracle_task_input_response.dart';
import 'get_user_tables_oracle_task_output_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that collects user tables for the given list of Oracle schemas
class GetUserTablesOracleTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Array of command properties.
  final pulumi.Input<List<dynamic>> commands;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Task input
  final pulumi.Input<GetUserTablesOracleTaskInputResponse?>? input;
  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<GetUserTablesOracleTaskOutputResponse>> output;
  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;
  /// Task type.
  /// Expected value is 'GetUserTablesOracle'.
  final pulumi.Input<String> taskType;

  /// Creates a new [GetUserTablesOracleTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  const GetUserTablesOracleTaskPropertiesResponse({
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
      'input': ?pulumi.Input.mapOptionalInputValue<GetUserTablesOracleTaskInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<List<GetUserTablesOracleTaskOutputResponse>, List<Map<String, dynamic>>>(output, (value) => pulumi.Input.encodeList<GetUserTablesOracleTaskOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'taskType': taskType,
    };
  }

  factory GetUserTablesOracleTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GetUserTablesOracleTaskPropertiesResponse(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      commands: pulumi.Input.fromValue((map['commands'] as List).cast<dynamic>()),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetUserTablesOracleTaskInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserTablesOracleTaskOutputResponse>(map['output']!, (value) => GetUserTablesOracleTaskOutputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
