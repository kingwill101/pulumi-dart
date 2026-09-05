// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTargetTrackingConfigurationPredefinedMetricSpecification {
  /// Metric type.
  final pulumi.Input<String> predefinedMetricType;
  /// Identifies the resource associated with the metric type.
  final pulumi.Input<String?>? resourceLabel;

  /// Creates a new [PolicyTargetTrackingConfigurationPredefinedMetricSpecification].
  /// [predefinedMetricType] Metric type.
  /// [resourceLabel] Identifies the resource associated with the metric type.
  const PolicyTargetTrackingConfigurationPredefinedMetricSpecification({
    required this.predefinedMetricType,
    this.resourceLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedMetricType': predefinedMetricType,
      'resourceLabel': ?resourceLabel,
    };
  }

  factory PolicyTargetTrackingConfigurationPredefinedMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfigurationPredefinedMetricSpecification(
      predefinedMetricType: pulumi.Input.fromValue(map['predefinedMetricType'] as String),
      resourceLabel: (() { final guardedValue = map['resourceLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
