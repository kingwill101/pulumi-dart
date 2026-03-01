// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold.dart';

class NumericalDataQualityMetricThreshold {
  /// Expected value is 'Numerical'.
  final String dataType;
  /// [Required] The numerical data quality metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThreshold? threshold;

  /// Creates a new [NumericalDataQualityMetricThreshold].
  /// [dataType] Expected value is 'Numerical'.
  /// [metric] [Required] The numerical data quality metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  NumericalDataQualityMetricThreshold({
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

  factory NumericalDataQualityMetricThreshold.fromMap(Map<String, dynamic> map) {
    return NumericalDataQualityMetricThreshold(
      dataType: map['dataType'] as String,
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

