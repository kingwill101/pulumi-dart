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
      commandType: (map['commandType'] as String).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (MigrateMISyncCompleteCommandInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      output: (MigrateMISyncCompleteCommandOutputResponse.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
      state: (map['state'] as String).input(),
    );
  }
}

