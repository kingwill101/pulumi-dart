// ignore_for_file: unused_element, unnecessary_cast

class PolicyStepScalingPolicyConfigurationStepAdjustment {
  /// Lower bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as negative infinity.
  final String? metricIntervalLowerBound;

  /// Upper bound for the difference between the alarm threshold and the CloudWatch metric. Without a value, AWS will treat this bound as infinity. The upper bound must be greater than the lower bound.
  final String? metricIntervalUpperBound;

  /// Number of members by which to scale, when the adjustment bounds are breached. A positive value scales up. A negative value scales down.
  final int scalingAdjustment;

  PolicyStepScalingPolicyConfigurationStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricIntervalLowerBoundValue = metricIntervalLowerBound;
    if (metricIntervalLowerBoundValue != null) {
      map['metricIntervalLowerBound'] = metricIntervalLowerBoundValue;
    }
    final metricIntervalUpperBoundValue = metricIntervalUpperBound;
    if (metricIntervalUpperBoundValue != null) {
      map['metricIntervalUpperBound'] = metricIntervalUpperBoundValue;
    }
    map['scalingAdjustment'] = scalingAdjustment;
    return map;
  }

  factory PolicyStepScalingPolicyConfigurationStepAdjustment.fromMap(
      Map<String, dynamic> map) {
    return PolicyStepScalingPolicyConfigurationStepAdjustment(
      metricIntervalLowerBound: map['metricIntervalLowerBound'] == null
          ? null
          : map['metricIntervalLowerBound'] as String,
      metricIntervalUpperBound: map['metricIntervalUpperBound'] == null
          ? null
          : map['metricIntervalUpperBound'] as String,
      scalingAdjustment: map['scalingAdjustment'] as int,
    );
  }
}
