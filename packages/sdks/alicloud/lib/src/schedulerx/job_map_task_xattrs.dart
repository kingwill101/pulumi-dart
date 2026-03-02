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
      consumerSize: map['consumerSize'] == null ? null : (map['consumerSize'] as int).input(),
      dispatcherSize: map['dispatcherSize'] == null ? null : (map['dispatcherSize'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      queueSize: map['queueSize'] == null ? null : (map['queueSize'] as int).input(),
      taskAttemptInterval: map['taskAttemptInterval'] == null ? null : (map['taskAttemptInterval'] as int).input(),
      taskMaxAttempt: map['taskMaxAttempt'] == null ? null : (map['taskMaxAttempt'] as int).input(),
    );
  }
}

