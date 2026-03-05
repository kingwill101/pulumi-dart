// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline ElapsedTime Metric Policy.
class PipelineElapsedTimeMetricPolicy {
  /// TimeSpan value, after which an Azure Monitoring Metric is fired.
  final pulumi.Input<dynamic>? duration;

  /// Creates a new [PipelineElapsedTimeMetricPolicy].
  /// [duration] TimeSpan value, after which an Azure Monitoring Metric is fired.
  PipelineElapsedTimeMetricPolicy({
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
    };
  }

  factory PipelineElapsedTimeMetricPolicy.fromMap(Map<String, dynamic> map) {
    return PipelineElapsedTimeMetricPolicy(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

