// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_misync_complete_command_input_response.dart';
import 'migrate_misync_complete_command_output_response.dart';
import 'odata_error_response.dart';

/// Properties for the command that completes online migration for an Azure SQL Database Managed Instance.
class MigrateMISyncCompleteCommandPropertiesResponse {
  /// Command type.
  /// Expected value is 'Migrate.SqlServer.AzureDbSqlMi.Complete'.
  final pulumi.Input<String> commandType;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Command input
  final pulumi.Input<MigrateMISyncCompleteCommandInputResponse>? input;
  /// Command output. This is ignored if submitted.
  final pulumi.Input<MigrateMISyncCompleteCommandOutputResponse> output;
  /// The state of the command. This is ignored if submitted.
  final pulumi.Input<String> state;

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
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateMISyncCompleteCommandInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<MigrateMISyncCompleteCommandOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
    };
  }

  factory MigrateMISyncCompleteCommandPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMISyncCompleteCommandPropertiesResponse(
      commandType: pulumi.Input.fromValue(map['commandType'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateMISyncCompleteCommandInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: pulumi.Input.fromValue(MigrateMISyncCompleteCommandOutputResponse.fromMap((map['output']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

