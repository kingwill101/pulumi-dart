// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification {
  final pulumi.Input<String> predefinedMetricType;
  final pulumi.Input<String?>? resourceLabel;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification].
  /// [predefinedMetricType] Required.
  /// [resourceLabel] Optional.
  const PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification({
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
      predefinedMetricType: pulumi.Input.fromValue(map['predefinedMetricType'] as String),
      resourceLabel: (() { final guardedValue = map['resourceLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
