// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_scale_response.dart';

/// Trigger configuration of an event driven job.
class JobConfigurationResponseEventTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;
  /// Scaling configurations for event driven jobs.
  final pulumi.Input<JobScaleResponse>? scale;

  /// Creates a new [JobConfigurationResponseEventTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  /// [scale] Scaling configurations for event driven jobs.
  JobConfigurationResponseEventTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
      'scale': ?pulumi.Input.mapOptionalInputValue<JobScaleResponse, Map<String, dynamic>>(scale, (value) => value.toMap()),
    };
  }

  factory JobConfigurationResponseEventTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponseEventTriggerConfig(
      parallelism: map['parallelism'] == null ? null : (map['parallelism']! as int).input(),
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : (map['replicaCompletionCount']! as int).input(),
      scale: map['scale'] == null ? null : (JobScaleResponse.fromMap((map['scale']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

