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
  /// Predictive scaling policy configuration, requires `policyType = "PredictiveScaling"`. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfiguration>? predictiveScalingPolicyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> resourceId;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> serviceNamespace;
  /// Step scaling policy configuration, requires `policyType = "StepScaling"` (default). See supported fields below.
  final pulumi.Input<PolicyStepScalingPolicyConfiguration>? stepScalingPolicyConfiguration;
  /// Target tracking policy configuration, requires `policyType = "TargetTrackingScaling"`. See supported fields below.
  final pulumi.Input<PolicyTargetTrackingScalingPolicyConfiguration>? targetTrackingScalingPolicyConfiguration;

  /// Creates a new [PolicyArgs].
  /// [name] Name of the policy. Must be between 1 and 255 characters in length.
  /// [policyType] Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  /// [predictiveScalingPolicyConfiguration] Predictive scaling policy configuration, requires `policyType = "PredictiveScaling"`. See supported fields below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [scalableDimension] Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [serviceNamespace] AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [stepScalingPolicyConfiguration] Step scaling policy configuration, requires `policyType = "StepScaling"` (default). See supported fields below.
  /// [targetTrackingScalingPolicyConfiguration] Target tracking policy configuration, requires `policyType = "TargetTrackingScaling"`. See supported fields below.
  const PolicyArgs({
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
    return <String, dynamic>{
      'name': ?name,
      'policyType': ?policyType,
      'predictiveScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfiguration, Map<String, dynamic>>(predictiveScalingPolicyConfiguration, (value) => value.toMap()),
      'region': ?region,
      'resourceId': resourceId,
      'scalableDimension': scalableDimension,
      'serviceNamespace': serviceNamespace,
      'stepScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyStepScalingPolicyConfiguration, Map<String, dynamic>>(stepScalingPolicyConfiguration, (value) => value.toMap()),
      'targetTrackingScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingScalingPolicyConfiguration, Map<String, dynamic>>(targetTrackingScalingPolicyConfiguration, (value) => value.toMap()),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictiveScalingPolicyConfiguration: (() { final guardedValue = map['predictiveScalingPolicyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPredictiveScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      scalableDimension: pulumi.Input.fromValue(map['scalableDimension'] as String),
      serviceNamespace: pulumi.Input.fromValue(map['serviceNamespace'] as String),
      stepScalingPolicyConfiguration: (() { final guardedValue = map['stepScalingPolicyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyStepScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetTrackingScalingPolicyConfiguration: (() { final guardedValue = map['targetTrackingScalingPolicyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTargetTrackingScalingPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
