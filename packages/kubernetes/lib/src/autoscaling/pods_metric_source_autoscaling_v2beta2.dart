// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_target_autoscaling_v2beta2.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourceAutoscalingV2beta2 {
  /// metric identifies the target metric by name and selector
  final MetricIdentifierAutoscalingV2beta2 metric;
  /// target specifies the target value for the given metric
  final MetricTargetAutoscalingV2beta2 target;

  /// Creates a new [PodsMetricSourceAutoscalingV2beta2].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  PodsMetricSourceAutoscalingV2beta2({
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric.toMap(),
      'target': target.toMap(),
    };
  }

  factory PodsMetricSourceAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourceAutoscalingV2beta2(
      metric: MetricIdentifierAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: MetricTargetAutoscalingV2beta2.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

