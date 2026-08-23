// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension {
  /// Name of the policy. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension].
  /// [name] Name of the policy. Must be between 1 and 255 characters in length.
  /// [value] Required.
  const PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingScalingPolicyConfigurationCustomizedMetricSpecificationDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
