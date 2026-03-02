// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_target_tracking_configuration_customized_metric_specification.dart';
import 'policy_target_tracking_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingConfiguration {
  /// Customized metric. Conflicts with `predefined_metric_specification`.
  final pulumi.Input<PolicyTargetTrackingConfigurationCustomizedMetricSpecification>? customizedMetricSpecification;
  /// Whether scale in by the target tracking policy is disabled.
  final pulumi.Input<bool>? disableScaleIn;
  /// Predefined metric. Conflicts with `customized_metric_specification`.
  final pulumi.Input<PolicyTargetTrackingConfigurationPredefinedMetricSpecification>? predefinedMetricSpecification;
  /// Target value for the metric.
  final pulumi.Input<double> targetValue;

  /// Creates a new [PolicyTargetTrackingConfiguration].
  /// [customizedMetricSpecification] Customized metric. Conflicts with `predefined_metric_specification`.
  /// [disableScaleIn] Whether scale in by the target tracking policy is disabled.
  /// [predefinedMetricSpecification] Predefined metric. Conflicts with `customized_metric_specification`.
  /// [targetValue] Target value for the metric.
  PolicyTargetTrackingConfiguration({
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
      customizedMetricSpecification: map['customizedMetricSpecification'] == null ? null : (PolicyTargetTrackingConfigurationCustomizedMetricSpecification.fromMap((map['customizedMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      disableScaleIn: map['disableScaleIn'] == null ? null : (map['disableScaleIn'] as bool).input(),
      predefinedMetricSpecification: map['predefinedMetricSpecification'] == null ? null : (PolicyTargetTrackingConfigurationPredefinedMetricSpecification.fromMap((map['predefinedMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      targetValue: (map['targetValue'] as double).input(),
    );
  }
}

