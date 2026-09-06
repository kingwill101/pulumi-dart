// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
class JobConfigurationResponseScheduleTriggerConfig {
  /// Cron formatted repeating schedule ("* * * * *") of a Cron Job.
  final pulumi.Input<String> cronExpression;
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int?>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int?>? replicaCompletionCount;

  /// Creates a new [JobConfigurationResponseScheduleTriggerConfig].
  /// [cronExpression] Cron formatted repeating schedule ("* * * * *") of a Cron Job.
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  const JobConfigurationResponseScheduleTriggerConfig({
    required this.cronExpression,
    this.parallelism,
    this.replicaCompletionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
    };
  }

  factory JobConfigurationResponseScheduleTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponseScheduleTriggerConfig(
      cronExpression: pulumi.Input.fromValue(map['cronExpression'] as String),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      replicaCompletionCount: (() { final guardedValue = map['replicaCompletionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
