// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_to_target_azure_db_for_postgre_sql_sync_task_input_response.dart';
import 'connect_to_target_azure_db_for_postgre_sql_sync_task_output_response.dart';
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';

/// Properties for the task that validates connection to Azure Database For PostgreSQL server and target server requirements for online migration
class ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Array of command properties.
  final List<MigrateMISyncCompleteCommandPropertiesResponse> commands;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Task input
  final ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse? input;
  /// Task output. This is ignored if submitted.
  final List<ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse> output;
  /// The state of the task. This is ignored if submitted.
  final String state;
  /// Task type.
  /// Expected value is 'ConnectToTarget.AzureDbForPostgreSql.Sync'.
  final String taskType;

  /// Creates a new [ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesResponse({
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
      'commands': pulumi.Input.encodeList<MigrateMISyncCompleteCommandPropertiesResponse, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'errors': pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'input': ?input == null ? null : input!.toMap(),
      'output': pulumi.Input.encodeList<ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
      'taskType': taskType,
    };
  }

  factory ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetAzureDbForPostgreSqlSyncTaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      commands: pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : ConnectToTargetAzureDbForPostgreSqlSyncTaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: pulumi.Input.decodeList<ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse>(map['output'], (value) => ConnectToTargetAzureDbForPostgreSqlSyncTaskOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

