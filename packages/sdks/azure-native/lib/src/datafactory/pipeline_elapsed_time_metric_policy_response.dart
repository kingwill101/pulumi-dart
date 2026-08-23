// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline ElapsedTime Metric Policy.
class PipelineElapsedTimeMetricPolicyResponse {
  /// TimeSpan value, after which an Azure Monitoring Metric is fired.
  final pulumi.Input<dynamic>? duration;

  /// Creates a new [PipelineElapsedTimeMetricPolicyResponse].
  /// [duration] TimeSpan value, after which an Azure Monitoring Metric is fired.
  const PipelineElapsedTimeMetricPolicyResponse({
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
    };
  }

  factory PipelineElapsedTimeMetricPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PipelineElapsedTimeMetricPolicyResponse(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
