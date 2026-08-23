// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cron formatted repeating trigger schedule ("* * * * *") for cronjobs. Properties completions and parallelism would be set to 1 by default
class JobConfigurationScheduleTriggerConfig {
  /// Cron formatted repeating schedule ("* * * * *") of a Cron Job.
  final pulumi.Input<String> cronExpression;
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;

  /// Creates a new [JobConfigurationScheduleTriggerConfig].
  /// [cronExpression] Cron formatted repeating schedule ("* * * * *") of a Cron Job.
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  const JobConfigurationScheduleTriggerConfig({
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

  factory JobConfigurationScheduleTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationScheduleTriggerConfig(
      cronExpression: pulumi.Input.fromValue(map['cronExpression'] as String),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicaCompletionCount: (() { final guardedValue = map['replicaCompletionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
