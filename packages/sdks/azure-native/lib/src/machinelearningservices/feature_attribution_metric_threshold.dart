// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold.dart';

class FeatureAttributionMetricThreshold {
  /// [Required] The feature attribution metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThreshold? threshold;

  /// Creates a new [FeatureAttributionMetricThreshold].
  /// [metric] [Required] The feature attribution metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  FeatureAttributionMetricThreshold({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
    };
  }

  factory FeatureAttributionMetricThreshold.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionMetricThreshold(
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

