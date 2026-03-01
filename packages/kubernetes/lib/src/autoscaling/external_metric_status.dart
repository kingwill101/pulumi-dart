// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier.dart';
import 'metric_value_status.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatus {
  /// current contains the current value for the given metric
  final MetricValueStatus current;
  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;

  /// Creates a new [ExternalMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  ExternalMetricStatus({
    required this.current,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': current.toMap(),
      'metric': metric.toMap(),
    };
  }

  factory ExternalMetricStatus.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatus(
      current: MetricValueStatus.fromMap((map['current'] as Map).cast<String, dynamic>()),
      metric: MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

