// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold_response.dart';

class CategoricalDataDriftMetricThresholdResponse {
  /// Expected value is 'Categorical'.
  final String dataType;
  /// [Required] The categorical data drift metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThresholdResponse? threshold;

  /// Creates a new [CategoricalDataDriftMetricThresholdResponse].
  /// [dataType] Expected value is 'Categorical'.
  /// [metric] [Required] The categorical data drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CategoricalDataDriftMetricThresholdResponse({
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

  factory CategoricalDataDriftMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return CategoricalDataDriftMetricThresholdResponse(
      dataType: map['dataType'] as String,
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThresholdResponse.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

