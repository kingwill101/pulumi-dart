// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_elapsed_time_metric_policy_response.dart';

/// Pipeline Policy.
class PipelinePolicyResponse {
  /// Pipeline ElapsedTime Metric Policy.
  final pulumi.Input<PipelineElapsedTimeMetricPolicyResponse>? elapsedTimeMetric;

  /// Creates a new [PipelinePolicyResponse].
  /// [elapsedTimeMetric] Pipeline ElapsedTime Metric Policy.
  const PipelinePolicyResponse({
    this.elapsedTimeMetric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTimeMetric': ?pulumi.Input.mapOptionalInputValue<PipelineElapsedTimeMetricPolicyResponse, Map<String, dynamic>>(elapsedTimeMetric, (value) => value.toMap()),
    };
  }

  factory PipelinePolicyResponse.fromMap(Map<String, dynamic> map) {
    return PipelinePolicyResponse(
      elapsedTimeMetric: (() { final guardedValue = map['elapsedTimeMetric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineElapsedTimeMetricPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
