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
  JobConfigurationManualTriggerConfig({
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
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : (map['replicaCompletionCount'] as int).input(),
    );
  }
}

