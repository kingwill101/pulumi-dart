// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_view_status_response.dart';

/// The instance view of a virtual machine run command.
class VirtualMachineRunCommandInstanceViewResponse {
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

  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;

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
      'statuses':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceViewStatusResponse>,
            List<Map<String, dynamic>>
          >(
            statuses,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceViewStatusResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualMachineRunCommandInstanceViewResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineRunCommandInstanceViewResponse(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionMessage: (() {
        final guardedValue = map['executionMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionState: (() {
        final guardedValue = map['executionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exitCode: (() {
        final guardedValue = map['exitCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      output: (() {
        final guardedValue = map['output'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statuses: (() {
        final guardedValue = map['statuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceViewStatusResponse>(
            guardedValue,
            (value) => InstanceViewStatusResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
