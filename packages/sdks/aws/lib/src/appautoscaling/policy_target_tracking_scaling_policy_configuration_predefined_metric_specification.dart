// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification {
  /// Metric type.
  final pulumi.Input<String> predefinedMetricType;
  /// Reserved for future use if the `predefined_metric_type` is not `ALBRequestCountPerTarget`. If the `predefined_metric_type` is `ALBRequestCountPerTarget`, you must specify this argument. Documentation can be found at: [AWS Predefined Scaling Metric Specification](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html). Must be less than or equal to 1023 characters in length.
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Reserved for future use if the `predefined_metric_type` is not `ALBRequestCountPerTarget`. If the `predefined_metric_type` is `ALBRequestCountPerTarget`, you must specify this argument. Documentation can be found at: [AWS Predefined Scaling Metric Specification](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html). Must be less than or equal to 1023 characters in length.
  PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification(
      predefinedMetricType: (map['predefinedMetricType'] as String).input(),
      resourceLabel: map['resourceLabel'] == null ? null : ((map['resourceLabel'] as String).input()).input(),
    );
  }
}

