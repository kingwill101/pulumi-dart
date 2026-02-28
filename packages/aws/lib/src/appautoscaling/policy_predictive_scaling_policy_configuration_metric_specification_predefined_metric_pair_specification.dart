// ignore_for_file: unused_element, unnecessary_cast

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification {
  /// Which metrics to use. There are two different types of metrics for each metric type: one is a load metric and one is a scaling metric.
  final String predefinedMetricType;

  /// Label that uniquely identifies a specific target group from which to determine the total and average request count.
  final String? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification].
  /// [predefinedMetricType] Which metrics to use. There are two different types of metrics for each metric type: one is a load metric and one is a scaling metric.
  /// [resourceLabel] Label that uniquely identifies a specific target group from which to determine the total and average request count.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification({
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

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification(
      predefinedMetricType: map['predefinedMetricType'] as String,
      resourceLabel:
          map['resourceLabel'] == null ? null : map['resourceLabel'] as String,
    );
  }
}
