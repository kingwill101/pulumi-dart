// ignore_for_file: unused_element, unnecessary_cast


class JobMapTaskXattrs {
  /// The number of threads to execute a single trigger. The default value is 5.
  final int? consumerSize;
  /// The number of subtask distribution threads. The default value is 5.
  final int? dispatcherSize;
  /// The number of sub-tasks pulled by a parallel task at a time. The default value is 100.
  final int? pageSize;
  /// The upper limit of the sub-task queue cache. The default value is 10000.
  final int? queueSize;
  /// Subtask failure retry interval.
  final int? taskAttemptInterval;
  /// The number of failed sub-task retries.
  final int? taskMaxAttempt;

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
      consumerSize: map['consumerSize'] == null ? null : map['consumerSize'] as int,
      dispatcherSize: map['dispatcherSize'] == null ? null : map['dispatcherSize'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      queueSize: map['queueSize'] == null ? null : map['queueSize'] as int,
      taskAttemptInterval: map['taskAttemptInterval'] == null ? null : map['taskAttemptInterval'] as int,
      taskMaxAttempt: map['taskMaxAttempt'] == null ? null : map['taskMaxAttempt'] as int,
    );
  }
}

