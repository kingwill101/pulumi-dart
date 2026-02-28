// ignore_for_file: unused_element, unnecessary_cast

import 'policy_target_tracking_configuration_customized_metric_specification.dart';
import 'policy_target_tracking_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingConfiguration {
  /// Customized metric. Conflicts with `predefined_metric_specification`.
  final PolicyTargetTrackingConfigurationCustomizedMetricSpecification?
      customizedMetricSpecification;

  /// Whether scale in by the target tracking policy is disabled.
  final bool? disableScaleIn;

  /// Predefined metric. Conflicts with `customized_metric_specification`.
  final PolicyTargetTrackingConfigurationPredefinedMetricSpecification?
      predefinedMetricSpecification;

  /// Target value for the metric.
  final double targetValue;

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
    final map = <String, dynamic>{};
    final customizedMetricSpecificationValue = customizedMetricSpecification;
    if (customizedMetricSpecificationValue != null) {
      map['customizedMetricSpecification'] =
          customizedMetricSpecificationValue.toMap();
    }
    final disableScaleInValue = disableScaleIn;
    if (disableScaleInValue != null) {
      map['disableScaleIn'] = disableScaleInValue;
    }
    final predefinedMetricSpecificationValue = predefinedMetricSpecification;
    if (predefinedMetricSpecificationValue != null) {
      map['predefinedMetricSpecification'] =
          predefinedMetricSpecificationValue.toMap();
    }
    map['targetValue'] = targetValue;
    return map;
  }

  factory PolicyTargetTrackingConfiguration.fromMap(Map<String, dynamic> map) {
    return PolicyTargetTrackingConfiguration(
      customizedMetricSpecification:
          map['customizedMetricSpecification'] == null
              ? null
              : PolicyTargetTrackingConfigurationCustomizedMetricSpecification
                  .fromMap((map['customizedMetricSpecification'] as Map)
                      .cast<String, dynamic>()),
      disableScaleIn:
          map['disableScaleIn'] == null ? null : map['disableScaleIn'] as bool,
      predefinedMetricSpecification:
          map['predefinedMetricSpecification'] == null
              ? null
              : PolicyTargetTrackingConfigurationPredefinedMetricSpecification
                  .fromMap((map['predefinedMetricSpecification'] as Map)
                      .cast<String, dynamic>()),
      targetValue: map['targetValue'] as double,
    );
  }
}
