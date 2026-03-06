// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduledPreloadExecution resources.
class ScheduledPreloadExecutionState {
  /// The end time of the prefetch plan.
  final pulumi.Input<String>? endTime;
  /// The time interval between each batch execution. Unit: seconds.
  final pulumi.Input<int>? interval;
  /// The ID of the prefetch plan.
  final pulumi.Input<String>? scheduledPreloadExecutionId;
  /// The ID of the prefetch task.
  final pulumi.Input<String>? scheduledPreloadJobId;
  /// The number of URLs prefetched in each batch.
  final pulumi.Input<int>? sliceLen;
  /// The start time of the prefetch plan.
  final pulumi.Input<String>? startTime;
  /// The status of the prefetch plan, including the following statuses.
  final pulumi.Input<String>? status;

  /// Creates a new [ScheduledPreloadExecutionState].
  /// [endTime] The end time of the prefetch plan.
  /// [interval] The time interval between each batch execution. Unit: seconds.
  /// [scheduledPreloadExecutionId] The ID of the prefetch plan.
  /// [scheduledPreloadJobId] The ID of the prefetch task.
  /// [sliceLen] The number of URLs prefetched in each batch.
  /// [startTime] The start time of the prefetch plan.
  /// [status] The status of the prefetch plan, including the following statuses.
  const ScheduledPreloadExecutionState({
    this.endTime,
    this.interval,
    this.scheduledPreloadExecutionId,
    this.scheduledPreloadJobId,
    this.sliceLen,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'interval': ?interval,
      'scheduledPreloadExecutionId': ?scheduledPreloadExecutionId,
      'scheduledPreloadJobId': ?scheduledPreloadJobId,
      'sliceLen': ?sliceLen,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory ScheduledPreloadExecutionState.fromMap(Map<String, dynamic> map) {
    return ScheduledPreloadExecutionState(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scheduledPreloadExecutionId: (() { final guardedValue = map['scheduledPreloadExecutionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledPreloadJobId: (() { final guardedValue = map['scheduledPreloadJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sliceLen: (() { final guardedValue = map['sliceLen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

