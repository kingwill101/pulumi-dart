// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold.dart';

class CustomMetricThreshold {
  /// [Required] The user-defined metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThreshold? threshold;

  /// Creates a new [CustomMetricThreshold].
  /// [metric] [Required] The user-defined metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CustomMetricThreshold({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
    };
  }

  factory CustomMetricThreshold.fromMap(Map<String, dynamic> map) {
    return CustomMetricThreshold(
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

