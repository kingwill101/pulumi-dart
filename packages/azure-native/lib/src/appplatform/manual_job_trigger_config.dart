// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for manual triggered job
class ManualJobTriggerConfig {
  /// Number of parallel replicas of a job execution can run.
  final int? parallelism;
  /// Maximum number of retries before failing the job.
  final int? retryLimit;
  /// Maximum number of seconds an execution is allowed to run.
  final int? timeoutInSeconds;
  /// Type of job trigger
  /// Expected value is 'Manual'.
  final String triggerType;

  /// Creates a new [ManualJobTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job execution can run.
  /// [retryLimit] Maximum number of retries before failing the job.
  /// [timeoutInSeconds] Maximum number of seconds an execution is allowed to run.
  /// [triggerType] Type of job trigger
  ManualJobTriggerConfig({
    this.parallelism,
    this.retryLimit,
    this.timeoutInSeconds,
    required this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'retryLimit': ?retryLimit,
      'timeoutInSeconds': ?timeoutInSeconds,
      'triggerType': triggerType,
    };
  }

  factory ManualJobTriggerConfig.fromMap(Map<String, dynamic> map) {
    return ManualJobTriggerConfig(
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      retryLimit: map['retryLimit'] == null ? null : map['retryLimit'] as int,
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : map['timeoutInSeconds'] as int,
      triggerType: map['triggerType'] as String,
    );
  }
}

