// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold_response.dart';

class FeatureAttributionMetricThresholdResponse {
  /// [Required] The feature attribution metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThresholdResponse? threshold;

  /// Creates a new [FeatureAttributionMetricThresholdResponse].
  /// [metric] [Required] The feature attribution metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  FeatureAttributionMetricThresholdResponse({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
    };
  }

  factory FeatureAttributionMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return FeatureAttributionMetricThresholdResponse(
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThresholdResponse.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

