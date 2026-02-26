// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServiceScalingTarget {
  /// Metric to use for auto-scaling. Valid values are `CPU` and `MEMORY`.
  final String autoScalingMetric;

  /// Target value for the auto-scaling metric (as a percentage). Defaults to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int autoScalingTargetValue;

  /// Maximum number of tasks to run.
  final int maxTaskCount;

  /// Minimum number of tasks to run.
  final int minTaskCount;

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
