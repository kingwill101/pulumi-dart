// ignore_for_file: unused_element, unnecessary_cast

class PolicyStepAdjustment {
  /// Lower bound for the
  /// difference between the alarm threshold and the CloudWatch metric.
  /// Without a value, AWS will treat this bound as negative infinity.
  final String? metricIntervalLowerBound;

  /// Upper bound for the
  /// difference between the alarm threshold and the CloudWatch metric.
  /// Without a value, AWS will treat this bound as positive infinity. The upper bound
  /// must be greater than the lower bound.
  ///
  /// Notice the bounds are **relative** to the alarm threshold, meaning that the starting point is not 0%, but the alarm threshold. Check the official [docs](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps) for a detailed example.
  ///
  /// The following arguments are only available to "TargetTrackingScaling" type policies:
  final String? metricIntervalUpperBound;

  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  final int scalingAdjustment;

  PolicyStepAdjustment({
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

  factory PolicyStepAdjustment.fromMap(Map<String, dynamic> map) {
    return PolicyStepAdjustment(
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
