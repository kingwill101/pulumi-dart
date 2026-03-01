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
  final pulumi.Input<PolicyPredictiveScalingPolicyConfiguration>? predictiveScalingPolicyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> resourceId;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String> serviceNamespace;
  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  final pulumi.Input<PolicyStepScalingPolicyConfiguration>? stepScalingPolicyConfiguration;
  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  final pulumi.Input<PolicyTargetTrackingScalingPolicyConfiguration>? targetTrackingScalingPolicyConfiguration;

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
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyType,
    pulumi.Output<PolicyPredictiveScalingPolicyConfiguration>? predictiveScalingPolicyConfiguration,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceId,
    required pulumi.Output<String> scalableDimension,
    required pulumi.Output<String> serviceNamespace,
    pulumi.Output<PolicyStepScalingPolicyConfiguration>? stepScalingPolicyConfiguration,
    pulumi.Output<PolicyTargetTrackingScalingPolicyConfiguration>? targetTrackingScalingPolicyConfiguration,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      predictiveScalingPolicyConfiguration = pulumi.Input.asOptionalInput<PolicyPredictiveScalingPolicyConfiguration>(predictiveScalingPolicyConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      scalableDimension = pulumi.Input.asInput<String>(scalableDimension),
      serviceNamespace = pulumi.Input.asInput<String>(serviceNamespace),
      stepScalingPolicyConfiguration = pulumi.Input.asOptionalInput<PolicyStepScalingPolicyConfiguration>(stepScalingPolicyConfiguration),
      targetTrackingScalingPolicyConfiguration = pulumi.Input.asOptionalInput<PolicyTargetTrackingScalingPolicyConfiguration>(targetTrackingScalingPolicyConfiguration);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      predictiveScalingPolicyConfiguration: map['predictiveScalingPolicyConfiguration'] == null ? null : pulumi.Output.create<PolicyPredictiveScalingPolicyConfiguration>(PolicyPredictiveScalingPolicyConfiguration.fromMap((map['predictiveScalingPolicyConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      scalableDimension: pulumi.Output.create<String>(map['scalableDimension'] as String),
      serviceNamespace: pulumi.Output.create<String>(map['serviceNamespace'] as String),
      stepScalingPolicyConfiguration: map['stepScalingPolicyConfiguration'] == null ? null : pulumi.Output.create<PolicyStepScalingPolicyConfiguration>(PolicyStepScalingPolicyConfiguration.fromMap((map['stepScalingPolicyConfiguration'] as Map).cast<String, dynamic>())),
      targetTrackingScalingPolicyConfiguration: map['targetTrackingScalingPolicyConfiguration'] == null ? null : pulumi.Output.create<PolicyTargetTrackingScalingPolicyConfiguration>(PolicyTargetTrackingScalingPolicyConfiguration.fromMap((map['targetTrackingScalingPolicyConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

