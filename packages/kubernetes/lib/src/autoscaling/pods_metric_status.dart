// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier.dart';
import 'metric_value_status.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatus {
  /// current contains the current value for the given metric
  final MetricValueStatus current;
  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;

  /// Creates a new [PodsMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  PodsMetricStatus({
    required this.current,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': current.toMap(),
      'metric': metric.toMap(),
    };
  }

  factory PodsMetricStatus.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatus(
      current: MetricValueStatus.fromMap((map['current'] as Map).cast<String, dynamic>()),
      metric: MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

