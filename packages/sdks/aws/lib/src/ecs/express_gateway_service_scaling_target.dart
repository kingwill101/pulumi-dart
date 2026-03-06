// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServiceScalingTarget {
  /// Metric to use for auto-scaling. Valid values are `CPU` and `MEMORY`.
  final pulumi.Input<String> autoScalingMetric;
  /// Target value for the auto-scaling metric (as a percentage). Defaults to `60`.
  final pulumi.Input<int> autoScalingTargetValue;
  /// Maximum number of tasks to run.
  final pulumi.Input<int> maxTaskCount;
  /// Minimum number of tasks to run.
  final pulumi.Input<int> minTaskCount;

  /// Creates a new [ExpressGatewayServiceScalingTarget].
  /// [autoScalingMetric] Metric to use for auto-scaling. Valid values are `CPU` and `MEMORY`.
  /// [autoScalingTargetValue] Target value for the auto-scaling metric (as a percentage). Defaults to `60`.
  /// [maxTaskCount] Maximum number of tasks to run.
  /// [minTaskCount] Minimum number of tasks to run.
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
      autoScalingTargetValue: pulumi.Input.fromValue(map['autoScalingTargetValue'] as int),
      maxTaskCount: pulumi.Input.fromValue(map['maxTaskCount'] as int),
      minTaskCount: pulumi.Input.fromValue(map['minTaskCount'] as int),
    );
  }
}

