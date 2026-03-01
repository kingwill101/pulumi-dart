// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_elapsed_time_metric_policy.dart';

/// Pipeline Policy.
class PipelinePolicy {
  /// Pipeline ElapsedTime Metric Policy.
  final PipelineElapsedTimeMetricPolicy? elapsedTimeMetric;

  /// Creates a new [PipelinePolicy].
  /// [elapsedTimeMetric] Pipeline ElapsedTime Metric Policy.
  PipelinePolicy({
    this.elapsedTimeMetric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTimeMetric': ?elapsedTimeMetric == null ? null : elapsedTimeMetric!.toMap(),
    };
  }

  factory PipelinePolicy.fromMap(Map<String, dynamic> map) {
    return PipelinePolicy(
      elapsedTimeMetric: map['elapsedTimeMetric'] == null ? null : PipelineElapsedTimeMetricPolicy.fromMap((map['elapsedTimeMetric'] as Map).cast<String, dynamic>()),
    );
  }
}

