// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration.dart';
import 'policy_step_scaling_policy_configuration.dart';
import 'policy_target_tracking_scaling_policy_configuration.dart';

/// {@template pulumi_appautoscaling_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_appautoscaling_policy_policy_args_doc}
class PolicyArgs {
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

  /// Creates a new [PolicyArgs].
  /// [name] Name of the policy. Must be between 1 and 255 characters in length.
  /// [policyType] Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  /// [predictiveScalingPolicyConfiguration] Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [scalableDimension] Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [serviceNamespace] AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [stepScalingPolicyConfiguration] Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  /// [targetTrackingScalingPolicyConfiguration] Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  PolicyArgs({
    String? name,
    String? policyType,
    PolicyPredictiveScalingPolicyConfiguration?
        predictiveScalingPolicyConfiguration,
    String? region,
    required String resourceId,
    required String scalableDimension,
    required String serviceNamespace,
    PolicyStepScalingPolicyConfiguration? stepScalingPolicyConfiguration,
    PolicyTargetTrackingScalingPolicyConfiguration?
        targetTrackingScalingPolicyConfiguration,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        policyType = pulumi.Input.asOptionalInput<String>(policyType),
        predictiveScalingPolicyConfiguration = pulumi.Input.asOptionalInput<
                PolicyPredictiveScalingPolicyConfiguration>(
            predictiveScalingPolicyConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceId = pulumi.Input.asInput<String>(resourceId),
        scalableDimension = pulumi.Input.asInput<String>(scalableDimension),
        serviceNamespace = pulumi.Input.asInput<String>(serviceNamespace),
        stepScalingPolicyConfiguration =
            pulumi.Input.asOptionalInput<PolicyStepScalingPolicyConfiguration>(
                stepScalingPolicyConfiguration),
        targetTrackingScalingPolicyConfiguration = pulumi.Input.asOptionalInput<
                PolicyTargetTrackingScalingPolicyConfiguration>(
            targetTrackingScalingPolicyConfiguration);

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

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      name: map['name'] == null ? null : map['name'] as String,
      policyType:
          map['policyType'] == null ? null : map['policyType'] as String,
      predictiveScalingPolicyConfiguration:
          map['predictiveScalingPolicyConfiguration'] == null
              ? null
              : PolicyPredictiveScalingPolicyConfiguration.fromMap(
                  (map['predictiveScalingPolicyConfiguration'] as Map)
                      .cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
      scalableDimension: map['scalableDimension'] as String,
      serviceNamespace: map['serviceNamespace'] as String,
      stepScalingPolicyConfiguration:
          map['stepScalingPolicyConfiguration'] == null
              ? null
              : PolicyStepScalingPolicyConfiguration.fromMap(
                  (map['stepScalingPolicyConfiguration'] as Map)
                      .cast<String, dynamic>()),
      targetTrackingScalingPolicyConfiguration:
          map['targetTrackingScalingPolicyConfiguration'] == null
              ? null
              : PolicyTargetTrackingScalingPolicyConfiguration.fromMap(
                  (map['targetTrackingScalingPolicyConfiguration'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
