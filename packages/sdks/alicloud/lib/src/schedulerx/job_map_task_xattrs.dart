// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobMapTaskXattrs {
  /// The number of threads to execute a single trigger. The default value is 5.
  final pulumi.Input<int>? consumerSize;

  /// The number of subtask distribution threads. The default value is 5.
  final pulumi.Input<int>? dispatcherSize;

  /// The number of sub-tasks pulled by a parallel task at a time. The default value is 100.
  final pulumi.Input<int>? pageSize;

  /// The upper limit of the sub-task queue cache. The default value is 10000.
  final pulumi.Input<int>? queueSize;

  /// Subtask failure retry interval.
  final pulumi.Input<int>? taskAttemptInterval;

  /// The number of failed sub-task retries.
  final pulumi.Input<int>? taskMaxAttempt;

  /// Creates a new [JobMapTaskXattrs].
  /// [consumerSize] The number of threads to execute a single trigger. The default value is 5.
  /// [dispatcherSize] The number of subtask distribution threads. The default value is 5.
  /// [pageSize] The number of sub-tasks pulled by a parallel task at a time. The default value is 100.
  /// [queueSize] The upper limit of the sub-task queue cache. The default value is 10000.
  /// [taskAttemptInterval] Subtask failure retry interval.
  /// [taskMaxAttempt] The number of failed sub-task retries.
  JobMapTaskXattrs({
    this.consumerSize,
    this.dispatcherSize,
    this.pageSize,
    this.queueSize,
    this.taskAttemptInterval,
    this.taskMaxAttempt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerSize': ?consumerSize,
      'dispatcherSize': ?dispatcherSize,
      'pageSize': ?pageSize,
      'queueSize': ?queueSize,
      'taskAttemptInterval': ?taskAttemptInterval,
      'taskMaxAttempt': ?taskMaxAttempt,
    };
  }

  factory JobMapTaskXattrs.fromMap(Map<String, dynamic> map) {
    return JobMapTaskXattrs(
      consumerSize: (() {
        final guardedValue = map['consumerSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dispatcherSize: (() {
        final guardedValue = map['dispatcherSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      queueSize: (() {
        final guardedValue = map['queueSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      taskAttemptInterval: (() {
        final guardedValue = map['taskAttemptInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      taskMaxAttempt: (() {
        final guardedValue = map['taskMaxAttempt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
