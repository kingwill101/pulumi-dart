// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension {
  /// Name of the dimension.
  final pulumi.Input<String> name;

  /// Value of the dimension.
  final pulumi.Input<String> value;

  /// Creates a new [PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension].
  /// [name] Name of the dimension.
  /// [value] Value of the dimension.
  PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricDimension(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
