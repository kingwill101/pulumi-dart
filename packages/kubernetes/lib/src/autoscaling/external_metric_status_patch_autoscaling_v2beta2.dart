// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_value_status_patch_autoscaling_v2beta2.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatusPatchAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final MetricValueStatusPatchAutoscalingV2beta2? current;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatchAutoscalingV2beta2? metric;

  /// Creates a new [ExternalMetricStatusPatchAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  ExternalMetricStatusPatchAutoscalingV2beta2({
    this.current,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current == null ? null : current!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
    };
  }

  factory ExternalMetricStatusPatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatusPatchAutoscalingV2beta2(
      current: map['current'] == null ? null : MetricValueStatusPatchAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatchAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

