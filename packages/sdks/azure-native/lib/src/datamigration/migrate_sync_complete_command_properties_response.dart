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
  const MigrateSyncCompleteCommandPropertiesResponse({
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
      commandId: (() { final guardedValue = map['commandId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commandType: pulumi.Input.fromValue(map['commandType'] as String),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ODataErrorResponse>(map['errors']!, (value) => ODataErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrateSyncCompleteCommandInputResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      output: pulumi.Input.fromValue(MigrateSyncCompleteCommandOutputResponse.fromMap((map['output']! as Map).cast<String, dynamic>())),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

