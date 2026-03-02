// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_scheduled_preload_execution_scheduled_preload_execution_args_doc}
/// The set of arguments for ScheduledPreloadExecution.
/// {@endtemplate}
/// {@macro pulumi_esa_scheduled_preload_execution_scheduled_preload_execution_args_doc}
class ScheduledPreloadExecutionArgs {
  /// The end time of the prefetch plan.
  final pulumi.Input<String>? endTime;
  /// The time interval between each batch execution. Unit: seconds.
  final pulumi.Input<int> interval;
  /// The ID of the prefetch task.
  final pulumi.Input<String> scheduledPreloadJobId;
  /// The number of URLs prefetched in each batch.
  final pulumi.Input<int> sliceLen;
  /// The start time of the prefetch plan.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ScheduledPreloadExecutionArgs].
  /// [endTime] The end time of the prefetch plan.
  /// [interval] The time interval between each batch execution. Unit: seconds.
  /// [scheduledPreloadJobId] The ID of the prefetch task.
  /// [sliceLen] The number of URLs prefetched in each batch.
  /// [startTime] The start time of the prefetch plan.
  ScheduledPreloadExecutionArgs({
    this.endTime,
    required this.interval,
    required this.scheduledPreloadJobId,
    required this.sliceLen,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'interval': interval,
      'scheduledPreloadJobId': scheduledPreloadJobId,
      'sliceLen': sliceLen,
      'startTime': ?startTime,
    };
  }

  factory ScheduledPreloadExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledPreloadExecutionArgs(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      interval: (map['interval'] as int).input(),
      scheduledPreloadJobId: (map['scheduledPreloadJobId'] as String).input(),
      sliceLen: (map['sliceLen'] as int).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

