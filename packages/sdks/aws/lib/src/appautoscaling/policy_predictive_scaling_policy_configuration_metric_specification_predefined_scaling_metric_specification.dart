// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification {
  /// Metric type.
  final pulumi.Input<String> predefinedMetricType;
  /// Label that uniquely identifies a specific target group from which to determine the average request count.
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Label that uniquely identifies a specific target group from which to determine the average request count.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification(
      predefinedMetricType: (map['predefinedMetricType'] as String).input(),
      resourceLabel: map['resourceLabel'] == null ? null : (map['resourceLabel'] as String).input(),
    );
  }
}

