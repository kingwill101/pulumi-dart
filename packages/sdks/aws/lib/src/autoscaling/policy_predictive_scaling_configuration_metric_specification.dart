// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_configuration_metric_specification_customized_capacity_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_customized_load_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_customized_scaling_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_load_metric_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_metric_pair_specification.dart';
import 'policy_predictive_scaling_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingConfigurationMetricSpecification {
  /// Customized capacity metric specification. The field is only valid when you use `customized_load_metric_specification`
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification>? customizedCapacityMetricSpecification;
  /// Customized load metric specification.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification>? customizedLoadMetricSpecification;
  /// Customized scaling metric specification.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification>? customizedScalingMetricSpecification;
  /// Predefined load metric specification.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification>? predefinedLoadMetricSpecification;
  /// Metric pair specification from which Amazon EC2 Auto Scaling determines the appropriate scaling metric and load metric to use.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification>? predefinedMetricPairSpecification;
  /// Predefined scaling metric specification.
  final pulumi.Input<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification>? predefinedScalingMetricSpecification;
  /// Target value for the metric.
  final pulumi.Input<double> targetValue;

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
      'customizedCapacityMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification, Map<String, dynamic>>(customizedCapacityMetricSpecification, (value) => value.toMap()),
      'customizedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification, Map<String, dynamic>>(customizedLoadMetricSpecification, (value) => value.toMap()),
      'customizedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification, Map<String, dynamic>>(customizedScalingMetricSpecification, (value) => value.toMap()),
      'predefinedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification, Map<String, dynamic>>(predefinedLoadMetricSpecification, (value) => value.toMap()),
      'predefinedMetricPairSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification, Map<String, dynamic>>(predefinedMetricPairSpecification, (value) => value.toMap()),
      'predefinedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification, Map<String, dynamic>>(predefinedScalingMetricSpecification, (value) => value.toMap()),
      'targetValue': targetValue,
    };
  }

  factory PolicyPredictiveScalingConfigurationMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingConfigurationMetricSpecification(
      customizedCapacityMetricSpecification: map['customizedCapacityMetricSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap((map['customizedCapacityMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      customizedLoadMetricSpecification: map['customizedLoadMetricSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap((map['customizedLoadMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      customizedScalingMetricSpecification: map['customizedScalingMetricSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap((map['customizedScalingMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      predefinedLoadMetricSpecification: map['predefinedLoadMetricSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap((map['predefinedLoadMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      predefinedMetricPairSpecification: map['predefinedMetricPairSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap((map['predefinedMetricPairSpecification'] as Map).cast<String, dynamic>())).input(),
      predefinedScalingMetricSpecification: map['predefinedScalingMetricSpecification'] == null ? null : (PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap((map['predefinedScalingMetricSpecification'] as Map).cast<String, dynamic>())).input(),
      targetValue: (map['targetValue'] as double).input(),
    );
  }
}

