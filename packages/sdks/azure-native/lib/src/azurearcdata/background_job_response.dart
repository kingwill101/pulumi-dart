// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The background job details.
class BackgroundJobResponse {
  /// The end time of the background job.
  final pulumi.Input<String>? endTime;
  /// The execution state of the background job.
  final pulumi.Input<String>? executionState;
  /// The last execution status of the background job.
  final pulumi.Input<String>? lastExecutionStatus;
  /// The last execution time of the background job.
  final pulumi.Input<String>? lastExecutionTime;
  /// The start time of the background job.
  final pulumi.Input<String>? startTime;
  /// The state of the background job.
  final pulumi.Input<String>? state;

  /// Creates a new [BackgroundJobResponse].
  /// [endTime] The end time of the background job.
  /// [executionState] The execution state of the background job.
  /// [lastExecutionStatus] The last execution status of the background job.
  /// [lastExecutionTime] The last execution time of the background job.
  /// [startTime] The start time of the background job.
  /// [state] The state of the background job.
  BackgroundJobResponse({
    this.endTime,
    this.executionState,
    this.lastExecutionStatus,
    this.lastExecutionTime,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'executionState': ?executionState,
      'lastExecutionStatus': ?lastExecutionStatus,
      'lastExecutionTime': ?lastExecutionTime,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory BackgroundJobResponse.fromMap(Map<String, dynamic> map) {
    return BackgroundJobResponse(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionState: (() { final guardedValue = map['executionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastExecutionStatus: (() { final guardedValue = map['lastExecutionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastExecutionTime: (() { final guardedValue = map['lastExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

