// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold_response.dart';

class CustomMetricThresholdResponse {
  /// [Required] The user-defined metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThresholdResponse? threshold;

  /// Creates a new [CustomMetricThresholdResponse].
  /// [metric] [Required] The user-defined metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CustomMetricThresholdResponse({
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': metric,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
    };
  }

  factory CustomMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return CustomMetricThresholdResponse(
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThresholdResponse.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

