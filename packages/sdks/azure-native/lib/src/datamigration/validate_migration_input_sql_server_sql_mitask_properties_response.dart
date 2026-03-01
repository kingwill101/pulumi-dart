// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_properties_response.dart';
import 'odata_error_response.dart';
import 'validate_migration_input_sql_server_sql_mitask_input_response.dart';
import 'validate_migration_input_sql_server_sql_mitask_output_response.dart';

/// Properties for task that validates migration input for SQL to Azure SQL Database Managed Instance
class ValidateMigrationInputSqlServerSqlMITaskPropertiesResponse {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Array of command properties.
  final List<MigrateMISyncCompleteCommandPropertiesResponse> commands;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Task input
  final ValidateMigrationInputSqlServerSqlMITaskInputResponse? input;
  /// Task output. This is ignored if submitted.
  final List<ValidateMigrationInputSqlServerSqlMITaskOutputResponse> output;
  /// The state of the task. This is ignored if submitted.
  final String state;
  /// Task type.
  /// Expected value is 'ValidateMigrationInput.SqlServer.AzureSqlDbMI'.
  final String taskType;

  /// Creates a new [ValidateMigrationInputSqlServerSqlMITaskPropertiesResponse].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [commands] Array of command properties.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Task input
  /// [output] Task output. This is ignored if submitted.
  /// [state] The state of the task. This is ignored if submitted.
  /// [taskType] Task type.
  ValidateMigrationInputSqlServerSqlMITaskPropertiesResponse({
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
      'output': pulumi.Input.encodeList<ValidateMigrationInputSqlServerSqlMITaskOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
      'taskType': taskType,
    };
  }

  factory ValidateMigrationInputSqlServerSqlMITaskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ValidateMigrationInputSqlServerSqlMITaskPropertiesResponse(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      commands: pulumi.Input.decodeList<MigrateMISyncCompleteCommandPropertiesResponse>(map['commands'], (value) => MigrateMISyncCompleteCommandPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : ValidateMigrationInputSqlServerSqlMITaskInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: pulumi.Input.decodeList<ValidateMigrationInputSqlServerSqlMITaskOutputResponse>(map['output'], (value) => ValidateMigrationInputSqlServerSqlMITaskOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

