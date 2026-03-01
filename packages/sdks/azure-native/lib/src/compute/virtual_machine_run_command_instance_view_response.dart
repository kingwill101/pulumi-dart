// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of a virtual machine run command.
class VirtualMachineRunCommandInstanceViewResponse {
  /// Script end time.
  final String? endTime;
  /// Script error stream.
  final String? error;
  /// Communicate script configuration errors or execution messages.
  final String? executionMessage;
  /// Script execution status.
  final String? executionState;
  /// Exit code returned from script execution.
  final int? exitCode;
  /// Script output stream.
  final String? output;
  /// Script start time.
  final String? startTime;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;

  /// Creates a new [VirtualMachineRunCommandInstanceViewResponse].
  /// [endTime] Script end time.
  /// [error] Script error stream.
  /// [executionMessage] Communicate script configuration errors or execution messages.
  /// [executionState] Script execution status.
  /// [exitCode] Exit code returned from script execution.
  /// [output] Script output stream.
  /// [startTime] Script start time.
  /// [statuses] The resource status information.
  VirtualMachineRunCommandInstanceViewResponse({
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
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineRunCommandInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineRunCommandInstanceViewResponse(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      error: map['error'] == null ? null : map['error'] as String,
      executionMessage: map['executionMessage'] == null ? null : map['executionMessage'] as String,
      executionState: map['executionState'] == null ? null : map['executionState'] as String,
      exitCode: map['exitCode'] == null ? null : map['exitCode'] as int,
      output: map['output'] == null ? null : map['output'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

