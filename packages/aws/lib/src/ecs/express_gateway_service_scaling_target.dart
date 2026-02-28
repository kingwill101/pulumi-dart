// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServiceScalingTarget {
  /// Metric to use for auto-scaling. Valid values are `CPU` and `MEMORY`.
  final String autoScalingMetric;

  /// Target value for the auto-scaling metric (as a percentage). Defaults to `60`.
  final int autoScalingTargetValue;

  /// Maximum number of tasks to run.
  final int maxTaskCount;

  /// Minimum number of tasks to run.
  final int minTaskCount;

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
    final map = <String, dynamic>{};
    map['autoScalingMetric'] = autoScalingMetric;
    map['autoScalingTargetValue'] = autoScalingTargetValue;
    map['maxTaskCount'] = maxTaskCount;
    map['minTaskCount'] = minTaskCount;
    return map;
  }

  factory ExpressGatewayServiceScalingTarget.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceScalingTarget(
      autoScalingMetric: map['autoScalingMetric'] as String,
      autoScalingTargetValue: map['autoScalingTargetValue'] as int,
      maxTaskCount: map['maxTaskCount'] as int,
      minTaskCount: map['minTaskCount'] as int,
    );
  }
}
