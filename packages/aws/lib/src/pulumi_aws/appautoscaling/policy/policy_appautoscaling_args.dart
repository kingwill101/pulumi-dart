// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_predictive_scaling_policy_configuration/policy_predictive_scaling_policy_configuration.dart';
import '../policy_step_scaling_policy_configuration/policy_step_scaling_policy_configuration.dart';
import '../policy_target_tracking_scaling_policy_configuration/policy_target_tracking_scaling_policy_configuration.dart';

/// The set of arguments for Policy.
class PolicyAppautoscalingArgs {
  /// Name of the policy. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  final pulumi.Input<String>? policyType;

  /// Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfiguration>?
      predictiveScalingPolicyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> resourceId;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> serviceNamespace;

  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  final pulumi.Input<PolicyStepScalingPolicyConfiguration>?
      stepScalingPolicyConfiguration;

  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  final pulumi.Input<PolicyTargetTrackingScalingPolicyConfiguration>?
      targetTrackingScalingPolicyConfiguration;

  PolicyAppautoscalingArgs({
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
      map['predictiveScalingPolicyConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  PolicyPredictiveScalingPolicyConfiguration,
                  Map<String, dynamic>>(
              predictiveScalingPolicyConfigurationValue,
              (value) => value.toMap());
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
      map['stepScalingPolicyConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  PolicyStepScalingPolicyConfiguration, Map<String, dynamic>>(
              stepScalingPolicyConfigurationValue, (value) => value.toMap());
    }
    final targetTrackingScalingPolicyConfigurationValue =
        targetTrackingScalingPolicyConfiguration;
    if (targetTrackingScalingPolicyConfigurationValue != null) {
      map['targetTrackingScalingPolicyConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  PolicyTargetTrackingScalingPolicyConfiguration,
                  Map<String, dynamic>>(
              targetTrackingScalingPolicyConfigurationValue,
              (value) => value.toMap());
    }
    return map;
  }

  factory PolicyAppautoscalingArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAppautoscalingArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyType: pulumi.Input.asOptionalInput<String>(map['policyType']),
      predictiveScalingPolicyConfiguration: pulumi.Input.asOptionalInput<
              PolicyPredictiveScalingPolicyConfiguration>(
          map['predictiveScalingPolicyConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      scalableDimension: pulumi.Input.asInput<String>(map['scalableDimension']),
      serviceNamespace: pulumi.Input.asInput<String>(map['serviceNamespace']),
      stepScalingPolicyConfiguration:
          pulumi.Input.asOptionalInput<PolicyStepScalingPolicyConfiguration>(
              map['stepScalingPolicyConfiguration']),
      targetTrackingScalingPolicyConfiguration: pulumi.Input.asOptionalInput<
              PolicyTargetTrackingScalingPolicyConfiguration>(
          map['targetTrackingScalingPolicyConfiguration']),
    );
  }
}
