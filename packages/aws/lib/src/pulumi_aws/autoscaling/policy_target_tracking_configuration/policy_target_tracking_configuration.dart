// ignore_for_file: unused_element, unnecessary_cast

import '../policy_target_tracking_configuration_customized_metric_specification/policy_target_tracking_configuration_customized_metric_specification.dart';
import '../policy_target_tracking_configuration_predefined_metric_specification/policy_target_tracking_configuration_predefined_metric_specification.dart';

class PolicyTargetTrackingConfiguration {
  /// Customized metric. Conflicts with <span pulumi-lang-nodejs="`predefinedMetricSpecification`" pulumi-lang-dotnet="`PredefinedMetricSpecification`" pulumi-lang-go="`predefinedMetricSpecification`" pulumi-lang-python="`predefined_metric_specification`" pulumi-lang-yaml="`predefinedMetricSpecification`" pulumi-lang-java="`predefinedMetricSpecification`">`predefined_metric_specification`</span>.
  final PolicyTargetTrackingConfigurationCustomizedMetricSpecification?
      customizedMetricSpecification;

  /// Whether scale in by the target tracking policy is disabled.
  final bool? disableScaleIn;

  /// Predefined metric. Conflicts with <span pulumi-lang-nodejs="`customizedMetricSpecification`" pulumi-lang-dotnet="`CustomizedMetricSpecification`" pulumi-lang-go="`customizedMetricSpecification`" pulumi-lang-python="`customized_metric_specification`" pulumi-lang-yaml="`customizedMetricSpecification`" pulumi-lang-java="`customizedMetricSpecification`">`customized_metric_specification`</span>.
  final PolicyTargetTrackingConfigurationPredefinedMetricSpecification?
      predefinedMetricSpecification;

  /// Target value for the metric.
  final double targetValue;

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
