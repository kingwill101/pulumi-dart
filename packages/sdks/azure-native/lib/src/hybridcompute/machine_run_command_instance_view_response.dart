// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extensions_resource_status_response.dart';

/// The instance view of a machine run command.
class MachineRunCommandInstanceViewResponse {
  /// Script end time.
  final pulumi.Input<String>? endTime;
  /// Script error stream.
  final pulumi.Input<String>? error;
  /// Communicate script configuration errors or execution messages.
  final pulumi.Input<String>? executionMessage;
  /// Script execution status.
  final pulumi.Input<String>? executionState;
  /// Exit code returned from script execution.
  final pulumi.Input<int>? exitCode;
  /// Script output stream.
  final pulumi.Input<String>? output;
  /// Script start time.
  final pulumi.Input<String>? startTime;
  /// The  status information.
  final pulumi.Input<List<ExtensionsResourceStatusResponse>>? statuses;

  /// Creates a new [MachineRunCommandInstanceViewResponse].
  /// [endTime] Script end time.
  /// [error] Script error stream.
  /// [executionMessage] Communicate script configuration errors or execution messages.
  /// [executionState] Script execution status.
  /// [exitCode] Exit code returned from script execution.
  /// [output] Script output stream.
  /// [startTime] Script start time.
  /// [statuses] The  status information.
  MachineRunCommandInstanceViewResponse({
    this.endTime,
    this.error,
    this.executionMessage,
    this.executionState,
    this.exitCode,
    this.output,
    this.startTime,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'error': ?error,
      'executionMessage': ?executionMessage,
      'executionState': ?executionState,
      'exitCode': ?exitCode,
      'output': ?output,
      'startTime': ?startTime,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ExtensionsResourceStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ExtensionsResourceStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MachineRunCommandInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return MachineRunCommandInstanceViewResponse(
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      error: map['error'] == null ? null : (map['error']! as String).input(),
      executionMessage: map['executionMessage'] == null ? null : (map['executionMessage']! as String).input(),
      executionState: map['executionState'] == null ? null : (map['executionState']! as String).input(),
      exitCode: map['exitCode'] == null ? null : (map['exitCode']! as int).input(),
      output: map['output'] == null ? null : (map['output']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<ExtensionsResourceStatusResponse>(map['statuses']!, (value) => ExtensionsResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

