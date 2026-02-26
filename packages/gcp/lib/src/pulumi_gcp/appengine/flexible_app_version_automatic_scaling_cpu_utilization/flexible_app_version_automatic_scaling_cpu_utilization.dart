// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionAutomaticScalingCpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  final String? aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final double targetUtilization;

  FlexibleAppVersionAutomaticScalingCpuUtilization({
    this.aggregationWindowLength,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationWindowLengthValue = aggregationWindowLength;
    if (aggregationWindowLengthValue != null) {
      map['aggregationWindowLength'] = aggregationWindowLengthValue;
    }
    map['targetUtilization'] = targetUtilization;
    return map;
  }

  factory FlexibleAppVersionAutomaticScalingCpuUtilization.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScalingCpuUtilization(
      aggregationWindowLength: map['aggregationWindowLength'] == null
          ? null
          : map['aggregationWindowLength'] as String,
      targetUtilization: map['targetUtilization'] as double,
    );
  }
}
