// ignore_for_file: unused_element, unnecessary_cast

import 'metric_identifier_patch.dart';
import 'metric_value_status_patch.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatusPatch {
  /// current contains the current value for the given metric
  final MetricValueStatusPatch? current;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatch? metric;

  /// Creates a new [ExternalMetricStatusPatch].
  /// [current] current contains the current value for the given metric
  /// [metric] metric identifies the target metric by name and selector
  ExternalMetricStatusPatch({
    this.current,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current == null ? null : current!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
    };
  }

  factory ExternalMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return ExternalMetricStatusPatch(
      current: map['current'] == null ? null : MetricValueStatusPatch.fromMap((map['current'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatch.fromMap((map['metric'] as Map).cast<String, dynamic>()),
    );
  }
}

