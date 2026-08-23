// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_elapsed_time_metric_policy.dart';

/// Pipeline Policy.
class PipelinePolicy {
  /// Pipeline ElapsedTime Metric Policy.
  final pulumi.Input<PipelineElapsedTimeMetricPolicy>? elapsedTimeMetric;

  /// Creates a new [PipelinePolicy].
  /// [elapsedTimeMetric] Pipeline ElapsedTime Metric Policy.
  const PipelinePolicy({
    this.elapsedTimeMetric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTimeMetric': ?pulumi.Input.mapOptionalInputValue<PipelineElapsedTimeMetricPolicy, Map<String, dynamic>>(elapsedTimeMetric, (value) => value.toMap()),
    };
  }

  factory PipelinePolicy.fromMap(Map<String, dynamic> map) {
    return PipelinePolicy(
      elapsedTimeMetric: (() { final guardedValue = map['elapsedTimeMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineElapsedTimeMetricPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
