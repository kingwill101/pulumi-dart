// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_threshold.dart';

class CategoricalPredictionDriftMetricThreshold {
  /// Expected value is 'Categorical'.
  final String dataType;
  /// [Required] The categorical prediction drift metric to calculate.
  final String metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final MonitoringThreshold? threshold;

  /// Creates a new [CategoricalPredictionDriftMetricThreshold].
  /// [dataType] Expected value is 'Categorical'.
  /// [metric] [Required] The categorical prediction drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CategoricalPredictionDriftMetricThreshold({
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

  factory CategoricalPredictionDriftMetricThreshold.fromMap(Map<String, dynamic> map) {
    return CategoricalPredictionDriftMetricThreshold(
      dataType: map['dataType'] as String,
      metric: map['metric'] as String,
      threshold: map['threshold'] == null ? null : MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>()),
    );
  }
}

