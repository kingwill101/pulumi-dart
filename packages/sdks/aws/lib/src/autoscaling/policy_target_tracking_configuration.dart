// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification.dart';
import 'policy_target_tracking_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingConfiguration {
  /// Customized metric. Conflicts with `predefinedMetricSpecification`.
  final pulumi.Input<PolicyTargetTrackingConfigurationCustomizedMetricSpecification>? customizedMetricSpecification;
  /// Whether scale in by the target tracking policy is disabled.
  final pulumi.Input<bool>? disableScaleIn;
  /// Predefined metric. Conflicts with `customizedMetricSpecification`.
  final pulumi.Input<PolicyTargetTrackingConfigurationPredefinedMetricSpecification>? predefinedMetricSpecification;
  /// Target value for the metric.
  final pulumi.Input<double> targetValue;

  /// Creates a new [PolicyTargetTrackingConfiguration].
  /// [customizedMetricSpecification] Customized metric. Conflicts with `predefinedMetricSpecification`.
  /// [disableScaleIn] Whether scale in by the target tracking policy is disabled.
  /// [predefinedMetricSpecification] Predefined metric. Conflicts with `customizedMetricSpecification`.
  /// [targetValue] Target value for the metric.
  const PolicyTargetTrackingConfiguration({
    this.customizedMetricSpecification,
    this.disableScaleIn,
    this.predefinedMetricSpecification,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizedMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingConfigurationCustomizedMetricSpecification, Map<String, dynamic>>(customizedMetricSpecification, (value) => value.toMap()),
      'disableScaleIn': ?disableScaleIn,
      'predefinedMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingConfigurationPredefinedMetricSpecification, Map<String, dynamic>>(predefinedMetricSpecification, (value) => value.toMap()),
      'targetValue': targetValue,
    };
  }

  factory PolicyTargetTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfiguration(
      customizedMetricSpecification: (() { final guardedValue = map['customizedMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingConfigurationCustomizedMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableScaleIn: (() { final guardedValue = map['disableScaleIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      predefinedMetricSpecification: (() { final guardedValue = map['predefinedMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingConfigurationPredefinedMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as double),
    );
  }
}
