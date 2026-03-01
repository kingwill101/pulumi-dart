// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier_autoscaling_v2beta2.dart';
import 'metric_value_status_autoscaling_v2beta2.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatusAutoscalingV2beta2 {
  /// current contains the current value for the given metric
  final MetricValueStatusAutoscalingV2beta2 current;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierAutoscalingV2beta2 metric;

  /// Creates a new [PodsMetricStatusAutoscalingV2beta2].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  PodsMetricStatusAutoscalingV2beta2({
    required this.current,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': current.toMap(),
      'metric': metric.toMap(),
    };
  }

  factory PodsMetricStatusAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatusAutoscalingV2beta2(
      current: MetricValueStatusAutoscalingV2beta2.fromMap((map['current'] as Map).cast<String, dynamic>()),
      metric: MetricIdentifierAutoscalingV2beta2.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

