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
  ExpressGatewayServiceScalingTarget({
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
      autoScalingMetric: (map['autoScalingMetric'] as String).input(),
      autoScalingTargetValue: (map['autoScalingTargetValue'] as int).input(),
      maxTaskCount: (map['maxTaskCount'] as int).input(),
      minTaskCount: (map['minTaskCount'] as int).input(),
    );
  }
}

