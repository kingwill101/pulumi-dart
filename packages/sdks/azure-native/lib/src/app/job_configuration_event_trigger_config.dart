// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_scale.dart';

/// Trigger configuration of an event driven job.
class JobConfigurationEventTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;

  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;

  /// Scaling configurations for event driven jobs.
  final pulumi.Input<JobScale>? scale;

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
      'scale':
          ?pulumi.Input.mapOptionalInputValue<JobScale, Map<String, dynamic>>(
            scale,
            (value) => value.toMap(),
          ),
    };
  }

  factory JobConfigurationEventTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationEventTriggerConfig(
      parallelism: (() {
        final guardedValue = map['parallelism'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      replicaCompletionCount: (() {
        final guardedValue = map['replicaCompletionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scale: (() {
        final guardedValue = map['scale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobScale.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
