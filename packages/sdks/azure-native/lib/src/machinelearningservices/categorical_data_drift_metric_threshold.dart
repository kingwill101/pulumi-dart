// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold.dart';

class CategoricalDataDriftMetricThreshold {
  /// Expected value is 'Categorical'.
  final pulumi.Input<String> dataType;
  /// [Required] The categorical data drift metric to calculate.
  final pulumi.Input<String> metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThreshold>? threshold;

  /// Creates a new [CategoricalDataDriftMetricThreshold].
  /// [dataType] Expected value is 'Categorical'.
  /// [metric] [Required] The categorical data drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  CategoricalDataDriftMetricThreshold({
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

  factory CategoricalDataDriftMetricThreshold.fromMap(Map<String, dynamic> map) {
    return CategoricalDataDriftMetricThreshold(
      dataType: (map['dataType'] as String).input(),
      metric: (map['metric'] as String).input(),
      threshold: map['threshold'] == null ? null : (MonitoringThreshold.fromMap((map['threshold'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

