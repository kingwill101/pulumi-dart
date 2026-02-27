// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_policy_configuration/policy_predictive_scaling_policy_configuration.dart';
import '../policy_step_scaling_policy_configuration/policy_step_scaling_policy_configuration.dart';
import '../policy_target_tracking_scaling_policy_configuration/policy_target_tracking_scaling_policy_configuration.dart';

/// The set of arguments for Policy.
class PolicyArgs2 {
  /// Name of the policy. Must be between 1 and 255 characters in length.
  final Input<String>? name;

  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  final Input<String>? policyType;

  /// Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  final Input<PolicyPredictiveScalingPolicyConfiguration>?
      predictiveScalingPolicyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final Input<String> resourceId;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final Input<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final Input<String> serviceNamespace;

  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  final Input<PolicyStepScalingPolicyConfiguration>?
      stepScalingPolicyConfiguration;

  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  final Input<PolicyTargetTrackingScalingPolicyConfiguration>?
      targetTrackingScalingPolicyConfiguration;

  PolicyArgs2({
    this.name,
    this.policyType,
    this.predictiveScalingPolicyConfiguration,
    this.region,
    required this.resourceId,
    required this.scalableDimension,
    required this.serviceNamespace,
    this.stepScalingPolicyConfiguration,
    this.targetTrackingScalingPolicyConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final predictiveScalingPolicyConfigurationValue =
        predictiveScalingPolicyConfiguration;
    if (predictiveScalingPolicyConfigurationValue != null) {
      map['predictiveScalingPolicyConfiguration'] = Input.mapOptionalInputValue<
              PolicyPredictiveScalingPolicyConfiguration, Map<String, dynamic>>(
          predictiveScalingPolicyConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    map['scalableDimension'] = scalableDimension;
    map['serviceNamespace'] = serviceNamespace;
    final stepScalingPolicyConfigurationValue = stepScalingPolicyConfiguration;
    if (stepScalingPolicyConfigurationValue != null) {
      map['stepScalingPolicyConfiguration'] = Input.mapOptionalInputValue<
              PolicyStepScalingPolicyConfiguration, Map<String, dynamic>>(
          stepScalingPolicyConfigurationValue, (value) => value.toMap());
    }
    final targetTrackingScalingPolicyConfigurationValue =
        targetTrackingScalingPolicyConfiguration;
    if (targetTrackingScalingPolicyConfigurationValue != null) {
      map['targetTrackingScalingPolicyConfiguration'] =
          Input.mapOptionalInputValue<
                  PolicyTargetTrackingScalingPolicyConfiguration,
                  Map<String, dynamic>>(
              targetTrackingScalingPolicyConfigurationValue,
              (value) => value.toMap());
    }
    return map;
  }

  factory PolicyArgs2.fromMap(Map<String, dynamic> map) {
    return PolicyArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      policyType: Input.asOptionalInput<String>(map['policyType']),
      predictiveScalingPolicyConfiguration:
          Input.asOptionalInput<PolicyPredictiveScalingPolicyConfiguration>(
              map['predictiveScalingPolicyConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceId: Input.asInput<String>(map['resourceId']),
      scalableDimension: Input.asInput<String>(map['scalableDimension']),
      serviceNamespace: Input.asInput<String>(map['serviceNamespace']),
      stepScalingPolicyConfiguration:
          Input.asOptionalInput<PolicyStepScalingPolicyConfiguration>(
              map['stepScalingPolicyConfiguration']),
      targetTrackingScalingPolicyConfiguration:
          Input.asOptionalInput<PolicyTargetTrackingScalingPolicyConfiguration>(
              map['targetTrackingScalingPolicyConfiguration']),
    );
  }
}
