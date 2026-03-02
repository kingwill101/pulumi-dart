// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_metric_pair_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecification {
  /// Customized capacity metric specification. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification>? customizedCapacityMetricSpecification;
  /// Customized load metric specification. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification>? customizedLoadMetricSpecification;
  /// Customized scaling metric specification. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification>? customizedScalingMetricSpecification;
  /// Predefined load metric specification. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification>? predefinedLoadMetricSpecification;
  /// Predefined metric pair specification that determines the appropriate scaling metric and load metric to use. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification>? predefinedMetricPairSpecification;
  /// Predefined scaling metric specification. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification>? predefinedScalingMetricSpecification;
  /// Target utilization.
  final pulumi.Input<String> targetValue;

  /// Creates a new [PolicyPredictiveScalingPolicyConfigurationMetricSpecification].
  /// [customizedCapacityMetricSpecification] Customized capacity metric specification. See supported fields below.
  /// [customizedLoadMetricSpecification] Customized load metric specification. See supported fields below.
  /// [customizedScalingMetricSpecification] Customized scaling metric specification. See supported fields below.
  /// [predefinedLoadMetricSpecification] Predefined load metric specification. See supported fields below.
  /// [predefinedMetricPairSpecification] Predefined metric pair specification that determines the appropriate scaling metric and load metric to use. See supported fields below.
  /// [predefinedScalingMetricSpecification] Predefined scaling metric specification. See supported fields below.
  /// [targetValue] Target utilization.
  PolicyPredictiveScalingPolicyConfigurationMetricSpecification({
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
      customizedCapacityMetricSpecification: map['customizedCapacityMetricSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification.fromMap((map['customizedCapacityMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      customizedLoadMetricSpecification: map['customizedLoadMetricSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification.fromMap((map['customizedLoadMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      customizedScalingMetricSpecification: map['customizedScalingMetricSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification.fromMap((map['customizedScalingMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      predefinedLoadMetricSpecification: map['predefinedLoadMetricSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification.fromMap((map['predefinedLoadMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      predefinedMetricPairSpecification: map['predefinedMetricPairSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification.fromMap((map['predefinedMetricPairSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      predefinedScalingMetricSpecification: map['predefinedScalingMetricSpecification'] == null ? null : ((PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification.fromMap((map['predefinedScalingMetricSpecification']! as Map).cast<String, dynamic>())).input()).input(),
      targetValue: (map['targetValue'] as String).input(),
    );
  }
}

