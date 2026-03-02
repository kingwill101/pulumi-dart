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
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      executionState: map['executionState'] == null ? null : (map['executionState']! as String).input(),
      lastExecutionStatus: map['lastExecutionStatus'] == null ? null : (map['lastExecutionStatus']! as String).input(),
      lastExecutionTime: map['lastExecutionTime'] == null ? null : (map['lastExecutionTime']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

