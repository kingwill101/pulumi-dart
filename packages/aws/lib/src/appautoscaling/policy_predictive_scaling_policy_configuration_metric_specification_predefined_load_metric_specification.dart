// ignore_for_file: unused_element, unnecessary_cast

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification {
  /// Metric type.
  final String predefinedMetricType;

  /// Label that uniquely identifies a target group.
  final String? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Label that uniquely identifies a target group.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel: map['resourceLabel'] == null
          ? null
          : map['resourceLabel'] as String,
    );
  }
}
