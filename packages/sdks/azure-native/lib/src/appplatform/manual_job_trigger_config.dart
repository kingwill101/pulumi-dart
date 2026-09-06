// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for manual triggered job
class ManualJobTriggerConfig {
  /// Number of parallel replicas of a job execution can run.
  final pulumi.Input<int?>? parallelism;
  /// Maximum number of retries before failing the job.
  final pulumi.Input<int?>? retryLimit;
  /// Maximum number of seconds an execution is allowed to run.
  final pulumi.Input<int?>? timeoutInSeconds;
  /// Type of job trigger
  /// Expected value is 'Manual'.
  final pulumi.Input<String> triggerType;

  /// Creates a new [ManualJobTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job execution can run.
  /// [retryLimit] Maximum number of retries before failing the job.
  /// [timeoutInSeconds] Maximum number of seconds an execution is allowed to run.
  /// [triggerType] Type of job trigger
  ManualJobTriggerConfig({
    this.parallelism,
    this.retryLimit,
    this.timeoutInSeconds,
    pulumi.Input<String>? triggerType,
  }) : triggerType = triggerType ?? pulumi.Input.fromValue('Manual');

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
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      retryLimit: (() { final guardedValue = map['retryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      triggerType: pulumi.Input.fromValue(map['triggerType'] as String),
    );
  }
}
