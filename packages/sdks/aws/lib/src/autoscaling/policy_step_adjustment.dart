// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyStepAdjustment {
  /// Lower bound for the
  /// difference between the alarm threshold and the CloudWatch metric.
  /// Without a value, AWS will treat this bound as negative infinity.
  final pulumi.Input<String>? metricIntervalLowerBound;
  /// Upper bound for the
  /// difference between the alarm threshold and the CloudWatch metric.
  /// Without a value, AWS will treat this bound as positive infinity. The upper bound
  /// must be greater than the lower bound.
  ///
  /// Notice the bounds are **relative** to the alarm threshold, meaning that the starting point is not 0%, but the alarm threshold. Check the official [docs](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps) for a detailed example.
  ///
  /// The following arguments are only available to "TargetTrackingScaling" type policies:
  final pulumi.Input<String>? metricIntervalUpperBound;
  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  final pulumi.Input<int> scalingAdjustment;

  /// Creates a new [PolicyStepAdjustment].
  /// [metricIntervalLowerBound] Lower bound for the
  /// [metricIntervalUpperBound] Upper bound for the
  /// [scalingAdjustment] Number of members by which to
  const PolicyStepAdjustment({
    this.metricIntervalLowerBound,
    this.metricIntervalUpperBound,
    required this.scalingAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricIntervalLowerBound': ?metricIntervalLowerBound,
      'metricIntervalUpperBound': ?metricIntervalUpperBound,
      'scalingAdjustment': scalingAdjustment,
    };
  }

  factory PolicyStepAdjustment.fromMap(Map<String, dynamic> map) {
    return PolicyStepAdjustment(
      metricIntervalLowerBound: (() { final guardedValue = map['metricIntervalLowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricIntervalUpperBound: (() { final guardedValue = map['metricIntervalUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingAdjustment: pulumi.Input.fromValue(map['scalingAdjustment'] as int),
    );
  }
}

