// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_metric_pair_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecification {
  /// Customized capacity metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification>? customizedCapacityMetricSpecification;
  /// Customized load metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification>? customizedLoadMetricSpecification;
  /// Customized scaling metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification>? customizedScalingMetricSpecification;
  /// Predefined load metric specification. See `predictive_scaling_policy_configuration.metric_specification.predefined_load_metric_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification>? predefinedLoadMetricSpecification;
  /// Predefined metric pair specification that determines the appropriate scaling metric and load metric to use. See `predictive_scaling_policy_configuration.metric_specification.predefined_metric_pair_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification>? predefinedMetricPairSpecification;
  /// Predefined scaling metric specification. See `predictive_scaling_policy_configuration.metric_specification.predefined_scaling_metric_specification` Block for details.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification>? predefinedScalingMetricSpecification;
  final pulumi.Input<String> targetValue;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecification].
  /// [customizedCapacityMetricSpecification] Customized capacity metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_capacity_metric_specification` Block for details.
  /// [customizedLoadMetricSpecification] Customized load metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_load_metric_specification` Block for details.
  /// [customizedScalingMetricSpecification] Customized scaling metric specification. See `predictive_scaling_policy_configuration.metric_specification.customized_scaling_metric_specification` Block for details.
  /// [predefinedLoadMetricSpecification] Predefined load metric specification. See `predictive_scaling_policy_configuration.metric_specification.predefined_load_metric_specification` Block for details.
  /// [predefinedMetricPairSpecification] Predefined metric pair specification that determines the appropriate scaling metric and load metric to use. See `predictive_scaling_policy_configuration.metric_specification.predefined_metric_pair_specification` Block for details.
  /// [predefinedScalingMetricSpecification] Predefined scaling metric specification. See `predictive_scaling_policy_configuration.metric_specification.predefined_scaling_metric_specification` Block for details.
  /// [targetValue] Required.
  const PolicyPredictiveScalingPolicyConfigurationMetricSpecification({
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
      'customizedCapacityMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification, Map<String, dynamic>>(customizedCapacityMetricSpecification, (value) => value.toMap()),
      'customizedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification, Map<String, dynamic>>(customizedLoadMetricSpecification, (value) => value.toMap()),
      'customizedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification, Map<String, dynamic>>(customizedScalingMetricSpecification, (value) => value.toMap()),
      'predefinedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification, Map<String, dynamic>>(predefinedLoadMetricSpecification, (value) => value.toMap()),
      'predefinedMetricPairSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification, Map<String, dynamic>>(predefinedMetricPairSpecification, (value) => value.toMap()),
      'predefinedScalingMetricSpecification': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification, Map<String, dynamic>>(predefinedScalingMetricSpecification, (value) => value.toMap()),
      'targetValue': targetValue,
    };
  }

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecification.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecification(
      customizedCapacityMetricSpecification: (() { final guardedValue = map['customizedCapacityMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customizedLoadMetricSpecification: (() { final guardedValue = map['customizedLoadMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customizedScalingMetricSpecification: (() { final guardedValue = map['customizedScalingMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predefinedLoadMetricSpecification: (() { final guardedValue = map['predefinedLoadMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predefinedMetricPairSpecification: (() { final guardedValue = map['predefinedMetricPairSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predefinedScalingMetricSpecification: (() { final guardedValue = map['predefinedScalingMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetValue: pulumi.Input.fromValue(map['targetValue'] as String),
    );
  }
}
