// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_sync_complete_command_input_response.dart';
import 'migrate_sync_complete_command_output_response.dart';
import 'odata_error_response.dart';

/// Properties for the command that completes sync migration for a database.
class MigrateSyncCompleteCommandPropertiesResponse {
  /// Command id
  final pulumi.Input<String>? commandId;
  /// Command type.
  /// Expected value is 'Migrate.Sync.Complete.Database'.
  final pulumi.Input<String> commandType;
  /// Array of errors. This is ignored if submitted.
  final pulumi.Input<List<ODataErrorResponse>> errors;
  /// Command input
  final pulumi.Input<MigrateSyncCompleteCommandInputResponse>? input;
  /// Command output. This is ignored if submitted.
  final pulumi.Input<MigrateSyncCompleteCommandOutputResponse> output;
  /// The state of the command. This is ignored if submitted.
  final pulumi.Input<String> state;

  /// Creates a new [MigrateSyncCompleteCommandPropertiesResponse].
  /// [commandId] Command id
  /// [commandType] Command type.
  /// [errors] Array of errors. This is ignored if submitted.
  /// [input] Command input
  /// [output] Command output. This is ignored if submitted.
  /// [state] The state of the command. This is ignored if submitted.
  MigrateSyncCompleteCommandPropertiesResponse({
    this.commandId,
    required this.commandType,
    required this.errors,
    this.input,
    required this.output,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commandId': ?commandId,
      'commandType': commandType,
      'errors': pulumi.Input.mapInputValue<List<ODataErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ODataErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'input': ?pulumi.Input.mapOptionalInputValue<MigrateSyncCompleteCommandInputResponse, Map<String, dynamic>>(input, (value) => value.toMap()),
      'output': pulumi.Input.mapInputValue<MigrateSyncCompleteCommandOutputResponse, Map<String, dynamic>>(output, (value) => value.toMap()),
      'state': state,
    };
  }

  factory MigrateSyncCompleteCommandPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSyncCompleteCommandPropertiesResponse(
      commandId: map['commandId'] == null ? null : (map['commandId'] as String).input(),
      commandType: (map['commandType'] as String).input(),
      errors: (pulumi.Input.decodeList<ODataErrorResponse>(map['errors'], (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      input: map['input'] == null ? null : (MigrateSyncCompleteCommandInputResponse.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      output: (MigrateSyncCompleteCommandOutputResponse.fromMap((map['output'] as Map).cast<String, dynamic>())).input(),
      state: (map['state'] as String).input(),
    );
  }
}

