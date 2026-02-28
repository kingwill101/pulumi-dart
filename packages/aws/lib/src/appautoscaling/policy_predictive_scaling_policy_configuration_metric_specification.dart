// ignore_for_file: unused_element, unnecessary_cast

import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_capacity_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_customized_scaling_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_load_metric_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_metric_pair_specification.dart';
import 'policy_predictive_scaling_policy_configuration_metric_specification_predefined_scaling_metric_specification.dart';

class PolicyPredictiveScalingPolicyConfigurationMetricSpecification {
  /// Customized capacity metric specification. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification?
      customizedCapacityMetricSpecification;

  /// Customized load metric specification. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification?
      customizedLoadMetricSpecification;

  /// Customized scaling metric specification. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification?
      customizedScalingMetricSpecification;

  /// Predefined load metric specification. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification?
      predefinedLoadMetricSpecification;

  /// Predefined metric pair specification that determines the appropriate scaling metric and load metric to use. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification?
      predefinedMetricPairSpecification;

  /// Predefined scaling metric specification. See supported fields below.
  final PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification?
      predefinedScalingMetricSpecification;

  /// Target utilization.
  final String targetValue;

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

  factory PolicyPredictiveScalingPolicyConfigurationMetricSpecification.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfigurationMetricSpecification(
      customizedCapacityMetricSpecification: map[
                  'customizedCapacityMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedCapacityMetricSpecification
              .fromMap((map['customizedCapacityMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      customizedLoadMetricSpecification: map[
                  'customizedLoadMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedLoadMetricSpecification
              .fromMap((map['customizedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      customizedScalingMetricSpecification: map[
                  'customizedScalingMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationCustomizedScalingMetricSpecification
              .fromMap((map['customizedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedLoadMetricSpecification: map[
                  'predefinedLoadMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedLoadMetricSpecification
              .fromMap((map['predefinedLoadMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedMetricPairSpecification: map[
                  'predefinedMetricPairSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedMetricPairSpecification
              .fromMap((map['predefinedMetricPairSpecification'] as Map)
                  .cast<String, dynamic>()),
      predefinedScalingMetricSpecification: map[
                  'predefinedScalingMetricSpecification'] ==
              null
          ? null
          : PolicyPredictiveScalingPolicyConfigurationMetricSpecificationPredefinedScalingMetricSpecification
              .fromMap((map['predefinedScalingMetricSpecification'] as Map)
                  .cast<String, dynamic>()),
      targetValue: map['targetValue'] as String,
    );
  }
}
