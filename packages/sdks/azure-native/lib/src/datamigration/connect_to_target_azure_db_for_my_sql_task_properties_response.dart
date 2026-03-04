// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_azure_db_for_my_sql_task_input_response.dart';
import 'connect_to_target_azure_db_for_my_sql_task_output_response.dart';
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that validates connection to Azure Database for MySQL and target server requirements
class ConnectToTargetAzureDbForMySqlTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>>? clientData;

  /// Array of command properties.
  final pulumi.Input<List<MigrateMISyncCompleteCommandPropertiesResponse>>
  commands;

  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;

  /// Task input
  final pulumi.Input<ConnectToTargetAzureDbForMySqlTaskInputResponse>? input;

  /// Task output. This is ignored if submitted.
  final pulumi.Input<List<ConnectToTargetAzureDbForMySqlTaskOutputResponse>>
  output;

  /// The state of the task. This is ignored if submitted.
  final pulumi.Input<String> state;

  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureDbForMySql'.
  final pulumi.Input<String> taskType;

  /// Creates a new [ConnectToTargetAzureDbForMySqlTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  ConnectToTargetAzureDbForMySqlTaskPropertiesResponse({
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
      'commands':
          pulumi.Input.mapInputValue<
            List<MigrateMISyncCompleteCommandPropertiesResponse>,
            List<Map<String, dynamic>>
          >(
            commands,
            (value) =>
                pulumi.Input.encodeList<
                  MigrateMISyncCompleteCommandPropertiesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'errors':
          pulumi.Input.mapInputValue<
            List<ODataErrorResponse>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeList<
                  ODataErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'input':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectToTargetAzureDbForMySqlTaskInputResponse,
            Map<String, dynamic>
          >(input, (value) => value.toMap()),
      'output':
          pulumi.Input.mapInputValue<
            List<ConnectToTargetAzureDbForMySqlTaskOutputResponse>,
            List<Map<String, dynamic>>
          >(
            output,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectToTargetAzureDbForMySqlTaskOutputResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': state,
      'taskType': taskType,
    };
  }

  factory ConnectToTargetAzureDbForMySqlTaskPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToTargetAzureDbForMySqlTaskPropertiesResponse(
      clientData: (() {
        final guardedValue = map['clientData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      commands: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(
          map['commands']!,
          (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      errors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ODataErrorResponse>(
          map['errors']!,
          (value) => ODataErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      input: (() {
        final guardedValue = map['input'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectToTargetAzureDbForMySqlTaskInputResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      output: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<ConnectToTargetAzureDbForMySqlTaskOutputResponse>(
          map['output']!,
          (value) => ConnectToTargetAzureDbForMySqlTaskOutputResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
