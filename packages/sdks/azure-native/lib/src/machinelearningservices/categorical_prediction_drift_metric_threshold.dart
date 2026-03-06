// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold.dart';

class CategoricalPredictionDriftMetricThreshold {
  /// Expected value is 'Categorical'.
  final pulumi.Input<String> dataType;
  /// [Required] The categorical prediction drift metric to calculate.
  final pulumi.Input<String> metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThreshold>? threshold;

  /// Creates a new [CategoricalPredictionDriftMetricThreshold].
  /// [dataType] Expected value is 'Categorical'.
  /// [metric] [Required] The categorical prediction drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  const CategoricalPredictionDriftMetricThreshold({
    required this.dataType,
    required this.metric,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'metric': metric,
      'threshold': ?pulumi.Input.mapOptionalInputValue<MonitoringThreshold, Map<String, dynamic>>(threshold, (value) => value.toMap()),
    };
  }

  factory CategoricalPredictionDriftMetricThreshold.fromMap(Map<String, dynamic> map) {
    return CategoricalPredictionDriftMetricThreshold(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      metric: pulumi.Input.fromValue(map['metric'] as String),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

