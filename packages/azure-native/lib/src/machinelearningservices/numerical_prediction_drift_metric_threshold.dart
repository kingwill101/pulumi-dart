// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold.dart';

class NumericalPredictionDriftMetricThreshold {
  /// Expected value is 'Numerical'.
  final String dataType;
  /// [Required] The numerical prediction drift metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThreshold? threshold;

  /// Creates a new [NumericalPredictionDriftMetricThreshold].
  /// [dataType] Expected value is 'Numerical'.
  /// [metric] [Required] The numerical prediction drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  NumericalPredictionDriftMetricThreshold({
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

  factory NumericalPredictionDriftMetricThreshold.fromMap(Map<String, dynamic> map) {
    return NumericalPredictionDriftMetricThreshold(
      dataType: map['dataType'] as String,
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

