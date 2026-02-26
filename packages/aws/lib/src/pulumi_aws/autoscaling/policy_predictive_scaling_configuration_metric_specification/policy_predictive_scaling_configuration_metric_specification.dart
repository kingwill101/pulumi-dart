// ignore_for_file: unused_element, unnecessary_cast

import '../policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification/policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification.dart';
import '../policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification/policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification.dart';
import '../policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification/policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification.dart';
import '../policy_predictive_scaling_configuration_metric_specification_predefined_load_metric_specification/policy_predictive_scaling_configuration_metric_specification_predefined_load_metric_specification.dart';
import '../policy_predictive_scaling_configuration_metric_specification_predefined_metric_pair_specification/policy_predictive_scaling_configuration_metric_specification_predefined_metric_pair_specification.dart';
import '../policy_predictive_scaling_configuration_metric_specification_predefined_scaling_metric_specification/policy_predictive_scaling_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingConfigurationMetricSpecification {
  /// Customized capacity metric specification. The field is only valid when you use <span pulumi-lang-nodejs="`customizedLoadMetricSpecification`" pulumi-lang-dotnet="`CustomizedLoadMetricSpecification`" pulumi-lang-go="`customizedLoadMetricSpecification`" pulumi-lang-python="`customized_load_metric_specification`" pulumi-lang-yaml="`customizedLoadMetricSpecification`" pulumi-lang-java="`customizedLoadMetricSpecification`">`customized_load_metric_specification`</span>
  final PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification?
      customizedCapacityMetricSpecification;

  /// Customized load metric specification.
  final PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification?
      customizedLoadMetricSpecification;

  /// Customized scaling metric specification.
  final PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification?
      customizedScalingMetricSpecification;

  /// Predefined load metric specification.
  final PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification?
      predefinedLoadMetricSpecification;

  /// Metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use.
  final PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification?
      predefinedMetricPairSpecification;

  /// Predefined scaling metric specification.
  final PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification?
      predefinedScalingMetricSpecification;

  /// Target value for the metric.
  final double targetValue;

  PolicyPredictiveScalingConfigurationMetricSpecification({
    this.customizedCapacityMetricSpecification,
    this.customizedLoadMetricSpecification,
    this.customizedScalingMetricSpecification,
    this.predefinedLoadMetricSpecification,
    this.predefinedMetricPairSpecification,
    this.predefinedScalingMetricSpecification,
    required this.targetValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customizedCapacityMetricSpecificationValue =
        customizedCapacityMetricSpecification;
    if (customizedCapacityMetricSpecificationValue != null) {
      map['customizedCapacityMetricSpecification'] =
          customizedCapacityMetricSpecificationValue.toMap();
    }
    final customizedLoadMetricSpecificationValue =
        customizedLoadMetricSpecification;
    if (customizedLoadMetricSpecificationValue != null) {
      map['customizedLoadMetricSpecification'] =
          customizedLoadMetricSpecificationValue.toMap();
    }
    final customizedScalingMetricSpecificationValue =
        customizedScalingMetricSpecification;
    if (customizedScalingMetricSpecificationValue != null) {
      map['customizedScalingMetricSpecification'] =
          customizedScalingMetricSpecificationValue.toMap();
    }
    final predefinedLoadMetricSpecificationValue =
        predefinedLoadMetricSpecification;
    if (predefinedLoadMetricSpecificationValue != null) {
      map['predefinedLoadMetricSpecification'] =
          predefinedLoadMetricSpecificationValue.toMap();
    }
    final predefinedMetricPairSpecificationValue =
        predefinedMetricPairSpecification;
    if (predefinedMetricPairSpecificationValue != null) {
      map['predefinedMetricPairSpecification'] =
          predefinedMetricPairSpecificationValue.toMap();
    }
    final predefinedScalingMetricSpecificationValue =
        predefinedScalingMetricSpecification;
    if (predefinedScalingMetricSpecificationValue != null) {
      map['predefinedScalingMetricSpecification'] =
          predefinedScalingMetricSpecificationValue.toMap();
    }
    map['targetValue'] = targetValue;
    return map;
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecification(
      customizedCapacityMetricSpecification: map[
                  'customizedCapacityMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification
              .fromMap((map['customizedCapacityMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      customizedLoadMetricSpecification: map[
                  'customizedLoadMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification
              .fromMap((map['customizedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      customizedScalingMetricSpecification: map[
                  'customizedScalingMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification
              .fromMap((map['customizedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedLoadMetricSpecification: map[
                  'predefinedLoadMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification
              .fromMap((map['predefinedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedMetricPairSpecification: map[
                  'predefinedMetricPairSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification
              .fromMap((map['predefinedMetricPairSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedScalingMetricSpecification: map[
                  'predefinedScalingMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification
              .fromMap((map['predefinedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      targetValue: map['targetValue'] as double,
    );
  }
}
