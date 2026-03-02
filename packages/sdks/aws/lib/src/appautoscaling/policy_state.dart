// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration.dart';
import 'policy_step_scaling_policy_configuration.dart';
import 'policy_target_tracking_scaling_policy_configuration.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// List of CloudWatch alarm ARNs associated with the scaling policy.
  final pulumi.Input<List<String>>? alarmArns;
  /// ARN assigned by AWS to the scaling policy.
  final pulumi.Input<String>? arn;
  /// Name of the policy. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;
  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  final pulumi.Input<String>? policyType;
  /// Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  final pulumi.Input<PolicyPredictiveScalingPolicyConfiguration>? predictiveScalingPolicyConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String>? resourceId;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String>? scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  final pulumi.Input<String>? serviceNamespace;
  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  final pulumi.Input<PolicyStepScalingPolicyConfiguration>? stepScalingPolicyConfiguration;
  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  final pulumi.Input<PolicyTargetTrackingScalingPolicyConfiguration>? targetTrackingScalingPolicyConfiguration;

  /// Creates a new [PolicyState].
  /// [alarmArns] List of CloudWatch alarm ARNs associated with the scaling policy.
  /// [arn] ARN assigned by AWS to the scaling policy.
  /// [name] Name of the policy. Must be between 1 and 255 characters in length.
  /// [policyType] Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  /// [predictiveScalingPolicyConfiguration] Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [scalableDimension] Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [serviceNamespace] AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  /// [stepScalingPolicyConfiguration] Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  /// [targetTrackingScalingPolicyConfiguration] Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  PolicyState({
    this.alarmArns,
    this.arn,
    this.name,
    this.policyType,
    this.predictiveScalingPolicyConfiguration,
    this.region,
    this.resourceId,
    this.scalableDimension,
    this.serviceNamespace,
    this.stepScalingPolicyConfiguration,
    this.targetTrackingScalingPolicyConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmArns': ?alarmArns,
      'arn': ?arn,
      'name': ?name,
      'policyType': ?policyType,
      'predictiveScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyPredictiveScalingPolicyConfiguration, Map<String, dynamic>>(predictiveScalingPolicyConfiguration, (value) => value.toMap()),
      'region': ?region,
      'resourceId': ?resourceId,
      'scalableDimension': ?scalableDimension,
      'serviceNamespace': ?serviceNamespace,
      'stepScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyStepScalingPolicyConfiguration, Map<String, dynamic>>(stepScalingPolicyConfiguration, (value) => value.toMap()),
      'targetTrackingScalingPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<PolicyTargetTrackingScalingPolicyConfiguration, Map<String, dynamic>>(targetTrackingScalingPolicyConfiguration, (value) => value.toMap()),
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      alarmArns: map['alarmArns'] == null ? null : (((map['alarmArns'] as List).cast<String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      policyType: map['policyType'] == null ? null : ((map['policyType'] as String).input()).input(),
      predictiveScalingPolicyConfiguration: map['predictiveScalingPolicyConfiguration'] == null ? null : ((PolicyPredictiveScalingPolicyConfiguration.fromMap((map['predictiveScalingPolicyConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      scalableDimension: map['scalableDimension'] == null ? null : ((map['scalableDimension'] as String).input()).input(),
      serviceNamespace: map['serviceNamespace'] == null ? null : ((map['serviceNamespace'] as String).input()).input(),
      stepScalingPolicyConfiguration: map['stepScalingPolicyConfiguration'] == null ? null : ((PolicyStepScalingPolicyConfiguration.fromMap((map['stepScalingPolicyConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      targetTrackingScalingPolicyConfiguration: map['targetTrackingScalingPolicyConfiguration'] == null ? null : ((PolicyTargetTrackingScalingPolicyConfiguration.fromMap((map['targetTrackingScalingPolicyConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

