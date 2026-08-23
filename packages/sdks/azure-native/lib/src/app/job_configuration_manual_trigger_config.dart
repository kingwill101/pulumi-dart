// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Manual trigger configuration for a single execution job. Properties replicaCompletionCount and parallelism would be set to 1 by default
class JobConfigurationManualTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;

  /// Creates a new [JobConfigurationManualTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  const JobConfigurationManualTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
    };
  }

  factory JobConfigurationManualTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobConfigurationManualTriggerConfig(
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicaCompletionCount: (() { final guardedValue = map['replicaCompletionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
