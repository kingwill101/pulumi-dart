// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServiceScalingTarget {
  /// Metric to use for auto-scaling. Valid values are `AVERAGE_CPU`, `AVERAGE_MEMORY` and `REQUEST_COUNT_PER_TARGET`.
  final pulumi.Input<String> autoScalingMetric;
  /// Target value for the auto-scaling metric (as a percentage). Defaults to `60`.
  final pulumi.Input<int> autoScalingTargetValue;
  /// Maximum number of tasks to run. Defaults to `20`.
  final pulumi.Input<int> maxTaskCount;
  /// Minimum number of tasks to run. Defaults to `1`.
  final pulumi.Input<int> minTaskCount;

  /// Creates a new [ExpressGatewayServiceScalingTarget].
  /// [autoScalingMetric] Metric to use for auto-scaling. Valid values are `AVERAGE_CPU`, `AVERAGE_MEMORY` and `REQUEST_COUNT_PER_TARGET`.
  /// [autoScalingTargetValue] Target value for the auto-scaling metric (as a percentage). Defaults to `60`.
  /// [maxTaskCount] Maximum number of tasks to run. Defaults to `20`.
  /// [minTaskCount] Minimum number of tasks to run. Defaults to `1`.
  const ExpressGatewayServiceScalingTarget({
    required this.autoScalingMetric,
    required this.autoScalingTargetValue,
    required this.maxTaskCount,
    required this.minTaskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingMetric': autoScalingMetric,
      'autoScalingTargetValue': autoScalingTargetValue,
      'maxTaskCount': maxTaskCount,
      'minTaskCount': minTaskCount,
    };
  }

  factory ExpressGatewayServiceScalingTarget.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceScalingTarget(
      autoScalingMetric: pulumi.Input.fromValue(map['autoScalingMetric'] as String),
      autoScalingTargetValue: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['autoScalingTargetValue'])),
      maxTaskCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxTaskCount'])),
      minTaskCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minTaskCount'])),
    );
  }
}
