// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_input_response.dart';
import 'migrate_misync_complete_command_output_response.dart';
import 'odata_error_response.dart';

/// Properties for the command that completes online migration for an Azure SQL Database Managed Instance.
class MigrateMISyncCompleteCommandPropertiesResponse {
  /// Command type.
  /// Expected value is 'Migrate.SqlServer.AzureDbSqlMi.Complete'.
  final String commandType;
  /// Array of errors. This is ignored if submitted.
  final List<ODataErrorResponse> errors;
  /// Command input
  final MigrateMISyncCompleteCommandInputResponse? input;
  /// Command output. This is ignored if submitted.
  final MigrateMISyncCompleteCommandOutputResponse output;
  /// The state of the command. This is ignored if submitted.
  final String state;

  /// Creates a new [MigrateMISyncCompleteCommandPropertiesResponse].
  /// [commandType] Command type.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Command input
  /// [output] Command output. This is ignored if submitted.
  /// [state] The state of the command. This is ignored if submitted.
  MigrateMISyncCompleteCommandPropertiesResponse({
    required this.commandType,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandType': commandType,
      'errors': pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'input': ?input == null ? null : input!.toMap(),
      'output': output.toMap(),
      'state': state,
    };
  }

  factory MigrateMISyncCompleteCommandPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMISyncCompleteCommandPropertiesResponse(
      commandType: map['commandType'] as String,
      errors: pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      input: map['input'] == null ? null : MigrateMISyncCompleteCommandInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: MigrateMISyncCompleteCommandOutputResponse.fromMap((map['output'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

