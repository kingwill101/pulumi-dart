// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification {
  final pulumi.Input<String> predefinedMetricType;
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification].
  /// [predefinedMetricType] Required.
  /// [resourceLabel] Optional.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification(
      predefinedMetricType: pulumi.Input.fromValue(map['predefinedMetricType'] as String),
      resourceLabel: (() { final guardedValue = map['resourceLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
