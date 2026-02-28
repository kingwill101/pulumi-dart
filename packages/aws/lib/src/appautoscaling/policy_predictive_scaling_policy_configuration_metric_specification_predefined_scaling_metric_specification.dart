// ignore_for_file: unused_element, unnecessary_cast

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification {
  /// Metric type.
  final String predefinedMetricType;

  /// Label that uniquely identifies a specific target group from which to determine the average request count.
  final String? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Label that uniquely identifies a specific target group from which to determine the average request count.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification({
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

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
