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
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionMessage: (() { final guardedValue = map['executionMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionState: (() { final guardedValue = map['executionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exitCode: (() { final guardedValue = map['exitCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionsResourceStatusResponse>(guardedValue, (value) => ExtensionsResourceStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

