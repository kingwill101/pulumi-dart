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
  ScheduledPreloadExecutionState({
    pulumi.Output<String>? endTime,
    pulumi.Output<int>? interval,
    pulumi.Output<String>? scheduledPreloadExecutionId,
    pulumi.Output<String>? scheduledPreloadJobId,
    pulumi.Output<int>? sliceLen,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? status,
  }) :
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      scheduledPreloadExecutionId = pulumi.Input.asOptionalInput<String>(scheduledPreloadExecutionId),
      scheduledPreloadJobId = pulumi.Input.asOptionalInput<String>(scheduledPreloadJobId),
      sliceLen = pulumi.Input.asOptionalInput<int>(sliceLen),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      scheduledPreloadExecutionId: map['scheduledPreloadExecutionId'] == null ? null : pulumi.Output.create<String>(map['scheduledPreloadExecutionId'] as String),
      scheduledPreloadJobId: map['scheduledPreloadJobId'] == null ? null : pulumi.Output.create<String>(map['scheduledPreloadJobId'] as String),
      sliceLen: map['sliceLen'] == null ? null : pulumi.Output.create<int>(map['sliceLen'] as int),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

