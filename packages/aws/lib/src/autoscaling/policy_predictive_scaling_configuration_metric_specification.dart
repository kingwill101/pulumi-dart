// ignore_for_file: unused_element, unnecessary_cast

import 'policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_load_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_metric_pair_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingConfigurationMetricSpecification {
  /// Customized capacity metric specification. The field is only valid when you use `customized_load_metric_specification`
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

  /// Creates a new [PolicyPredictiveScalingConfigurationMetricSpecification].
  /// [customizedCapacityMetricSpecification] Customized capacity metric specification. The field is only valid when you use `customized_load_metric_specification`
  /// [customizedLoadMetricSpecification] Customized load metric specification.
  /// [customizedScalingMetricSpecification] Customized scaling metric specification.
  /// [predefinedLoadMetricSpecification] Predefined load metric specification.
  /// [predefinedMetricPairSpecification] Metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use.
  /// [predefinedScalingMetricSpecification] Predefined scaling metric specification.
  /// [targetValue] Target value for the metric.
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
    return <String, dynamic>{
      'customizedCapacityMetricSpecification':
          ?customizedCapacityMetricSpecification == null
          ? null
          : customizedCapacityMetricSpecification!.toMap(),
      'customizedLoadMetricSpecification':
          ?customizedLoadMetricSpecification == null
          ? null
          : customizedLoadMetricSpecification!.toMap(),
      'customizedScalingMetricSpecification':
          ?customizedScalingMetricSpecification == null
          ? null
          : customizedScalingMetricSpecification!.toMap(),
      'predefinedLoadMetricSpecification':
          ?predefinedLoadMetricSpecification == null
          ? null
          : predefinedLoadMetricSpecification!.toMap(),
      'predefinedMetricPairSpecification':
          ?predefinedMetricPairSpecification == null
          ? null
          : predefinedMetricPairSpecification!.toMap(),
      'predefinedScalingMetricSpecification':
          ?predefinedScalingMetricSpecification == null
          ? null
          : predefinedScalingMetricSpecification!.toMap(),
      'targetValue': targetValue,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfigurationMetricSpecification(
      customizedCapacityMetricSpecification:
          map['customizedCapacityMetricSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap(
              (map['customizedCapacityMetricSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      customizedLoadMetricSpecification:
          map['customizedLoadMetricSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap(
              (map['customizedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      customizedScalingMetricSpecification:
          map['customizedScalingMetricSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap(
              (map['customizedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      predefinedLoadMetricSpecification:
          map['predefinedLoadMetricSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap(
              (map['predefinedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      predefinedMetricPairSpecification:
          map['predefinedMetricPairSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap(
              (map['predefinedMetricPairSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      predefinedScalingMetricSpecification:
          map['predefinedScalingMetricSpecification'] == null
          ? null
          : PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap(
              (map['predefinedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      targetValue: map['targetValue'] as double,
    );
  }
}
