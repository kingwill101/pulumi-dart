// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold.dart';

class NumericalDataDriftMetricThreshold {
  /// Expected value is 'Numerical'.
  final pulumi.Input<String> dataType;
  /// [Required] The numerical data drift metric to calculate.
  final pulumi.Input<String> metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThreshold>? threshold;

  /// Creates a new [NumericalDataDriftMetricThreshold].
  /// [dataType] Expected value is 'Numerical'.
  /// [metric] [Required] The numerical data drift metric to calculate.
  /// [threshold] The threshold value. If null, a default value will be set depending on the selected metric.
  NumericalDataDriftMetricThreshold({
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

  factory NumericalDataDriftMetricThreshold.fromMap(Map<String, dynamic> map) {
    return NumericalDataDriftMetricThreshold(
      dataType: (map['dataType'] as String).input(),
      metric: (map['metric'] as String).input(),
      threshold: map['threshold'] == null ? null : (MonitoringThreshold.fromMap((map['threshold']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

