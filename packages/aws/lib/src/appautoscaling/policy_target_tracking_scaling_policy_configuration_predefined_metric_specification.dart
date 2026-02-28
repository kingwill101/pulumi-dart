// ignore_for_file: unused_element, unnecessary_cast

class PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification {
  /// Metric type.
  final String predefinedMetricType;

  /// Reserved for future use if the `predefined_metric_type` is not `ALBRequestCountPerTarget`. If the `predefined_metric_type` is `ALBRequestCountPerTarget`, you must specify this argument. Documentation can be found at: [AWS Predefined Scaling Metric Specification](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html). Must be less than or equal to 1023 characters in length.
  final String? resourceLabel;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Reserved for future use if the `predefined_metric_type` is not `ALBRequestCountPerTarget`. If the `predefined_metric_type` is `ALBRequestCountPerTarget`, you must specify this argument. Documentation can be found at: [AWS Predefined Scaling Metric Specification](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedScalingMetricSpecification.html). Must be less than or equal to 1023 characters in length.
  PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedMetricType'] = predefinedMetricType;
    final resourceLabelValue = resourceLabel;
    if (resourceLabelValue != null) {
      map['resourceLabel'] = resourceLabelValue;
    }
    return map;
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
