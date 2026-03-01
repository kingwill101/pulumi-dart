// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_elapsed_time_metric_policy_response.dart';

/// Pipeline Policy.
class PipelinePolicyResponse {
  /// Pipeline ElapsedTime Metric Policy.
  final PipelineElapsedTimeMetricPolicyResponse? elapsedTimeMetric;

  /// Creates a new [PipelinePolicyResponse].
  /// [elapsedTimeMetric] Pipeline ElapsedTime Metric Policy.
  PipelinePolicyResponse({
    this.elapsedTimeMetric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTimeMetric': ?elapsedTimeMetric == null ? null : elapsedTimeMetric!.toMap(),
    };
  }

  factory PipelinePolicyResponse.fromMap(Map<String, dynamic> map) {
    return PipelinePolicyResponse(
      elapsedTimeMetric: map['elapsedTimeMetric'] == null ? null : PipelineElapsedTimeMetricPolicyResponse.fromMap((map['elapsedTimeMetric'] as Map).cast<String, dynamic>()),
    );
  }
}

