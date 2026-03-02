// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_threshold_response.dart';

class NumericalDataDriftMetricThresholdResponse {
  /// Expected value is 'Numerical'.
  final pulumi.Input<String> dataType;
  /// [Required] The numerical data drift metric to calculate.
  final pulumi.Input<String> metric;
  /// The threshold value. If null, a default value will be set depending on the selected metric.
  final pulumi.Input<MonitoringThresholdResponse>? threshold;

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
      'threshold': ?pulumi.Input.mapOptionalInputValue<MonitoringThresholdResponse, Map<String, dynamic>>(threshold, (value) => value.toMap()),
    };
  }

  factory NumericalDataDriftMetricThresholdResponse.fromMap(Map<String, dynamic> map) {
    return NumericalDataDriftMetricThresholdResponse(
      dataType: (map['dataType'] as String).input(),
      metric: (map['metric'] as String).input(),
      threshold: map['threshold'] == null ? null : (MonitoringThresholdResponse.fromMap((map['threshold']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

