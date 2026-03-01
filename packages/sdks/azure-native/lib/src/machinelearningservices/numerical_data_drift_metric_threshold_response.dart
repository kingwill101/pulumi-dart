// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold_response.dart';

class NumericalDataDriftMetricThresholdResponse {
  /// Expected value is 'Numerical'.
  final String dataType;
  /// [Required] The numerical data drift metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThresholdResponse? threshold;

  /// Creates a new [NumericalDataDriftMetricThresholdResponse].
  /// [dataType] Expected value is 'Numerical'.
  /// [metric] [Required] The numerical data drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  NumericalDataDriftMetricThresholdResponse({
    required this.dataType,
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'metric': metric,
      'threshold': ?threshold == null ? null : threshold!.toMap(),
    };
  }

  factory NumericalDataDriftMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return NumericalDataDriftMetricThresholdResponse(
      dataType: map['dataType'] as String,
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThresholdResponse.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

