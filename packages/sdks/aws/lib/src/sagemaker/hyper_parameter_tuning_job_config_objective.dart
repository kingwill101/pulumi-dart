// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobConfigObjective {
  /// Metric name that tuning tries to optimize.
  final pulumi.Input<String> metricName;
  /// Optimization direction. Valid values include `Minimize` and `Maximize`.
  final pulumi.Input<String> type;

  /// Creates a new [HyperParameterTuningJobConfigObjective].
  /// [metricName] Metric name that tuning tries to optimize.
  /// [type] Optimization direction. Valid values include `Minimize` and `Maximize`.
  const HyperParameterTuningJobConfigObjective({
    required this.metricName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'type': type,
    };
  }

  factory HyperParameterTuningJobConfigObjective.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobConfigObjective(
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
