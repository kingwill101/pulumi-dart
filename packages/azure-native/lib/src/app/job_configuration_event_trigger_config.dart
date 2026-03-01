// ignore_for_file: unused_element, unnecessary_cast

import 'job_scale.dart';

/// Trigger configuration of an event driven job.
class JobConfigurationEventTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final int? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final int? replicaCompletionCount;
  /// Scaling configurations for event driven jobs.
  final JobScale? scale;

  /// Creates a new [JobConfigurationEventTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  /// [scale] Scaling configurations for event driven jobs.
  JobConfigurationEventTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
      'scale': ?scale == null ? null : scale!.toMap(),
    };
  }

  factory JobConfigurationEventTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationEventTriggerConfig(
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : map['replicaCompletionCount'] as int,
      scale: map['scale'] == null ? null : JobScale.fromMap((map['scale'] as Map).cast<String, dynamic>()),
    );
  }
}

