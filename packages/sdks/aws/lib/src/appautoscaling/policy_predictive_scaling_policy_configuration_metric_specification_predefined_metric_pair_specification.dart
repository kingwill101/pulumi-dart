// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification {
  /// Which metrics to use. There are two different types of metrics for each metric type: one is a load metric and one is a scaling metric.
  final pulumi.Input<String> predefinedMetricType;

  /// Label that uniquely identifies a specific target group from which to determine the total and average request count.
  final pulumi.Input<String>? resourceLabel;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification].
  /// [predefinedMetricType] Which metrics to use. There are two different types of metrics for each metric type: one is a load metric and one is a scaling metric.
  /// [resourceLabel] Label that uniquely identifies a specific target group from which to determine the total and average request count.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification(
      predefinedMetricType: pulumi.Input.fromValue(
        map['predefinedMetricType'] as String,
      ),
      resourceLabel: (() {
        final guardedValue = map['resourceLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
