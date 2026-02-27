import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_policy_configuration/policy_predictive_scaling_policy_configuration.dart';
import '../policy_step_scaling_policy_configuration/policy_step_scaling_policy_configuration.dart';
import '../policy_target_tracking_scaling_policy_configuration/policy_target_tracking_scaling_policy_configuration.dart';
import 'policy_args2.dart';

/// Provides an Application AutoScaling Policy resource.
///
/// ## Example Usage
///
/// ### DynamoDB Table Autoscaling
///
///
///
/// ### ECS Service Autoscaling
///
///
///
/// ### Preserve desired count when updating an autoscaled ECS Service
///
///
///
/// ### Aurora Read Replica Autoscaling
///
///
///
/// ### Create target tracking scaling policy using metric math
///
///
///
/// ### Predictive Scaling
///
///
///
/// ### MSK / Kafka Autoscaling
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Application AutoScaling Policy using the `service-namespace` , `resource-id`, `scalable-dimension` and `policy-name` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:appautoscaling/policy:Policy test-policy service-namespace/resource-id/scalable-dimension/policy-name
/// ```
class Policy2 extends CustomResource {
  /// List of CloudWatch alarm ARNs associated with the scaling policy.
  late final Output<List<String>> alarmArns;

  /// ARN assigned by AWS to the scaling policy.
  late final Output<String> arn;

  /// Name of the policy. Must be between 1 and 255 characters in length.
  late final Output<String> name;

  /// Policy type. Valid values are `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`. Defaults to `StepScaling`. Certain services only support only one policy type. For more information see the [Target Tracking Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html), [Step Scaling Policies](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html), and [Predictive Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-predictive-scaling.html) documentation.
  late final Output<String?> policyType;

  /// Predictive scaling policy configuration, requires `policy_type = "PredictiveScaling"`. See supported fields below.
  late final Output<PolicyPredictiveScalingPolicyConfiguration?>
      predictiveScalingPolicyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final Output<String> resourceId;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final Output<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
  late final Output<String> serviceNamespace;

  /// Step scaling policy configuration, requires `policy_type = "StepScaling"` (default). See supported fields below.
  late final Output<PolicyStepScalingPolicyConfiguration?>
      stepScalingPolicyConfiguration;

  /// Target tracking policy configuration, requires `policy_type = "TargetTrackingScaling"`. See supported fields below.
  late final Output<PolicyTargetTrackingScalingPolicyConfiguration?>
      targetTrackingScalingPolicyConfiguration;

  Policy2(
    String name, {
    PolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appautoscaling/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alarmArns = registerOutput<List<String>>('alarmArns');
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String?>('policyType');
    this.predictiveScalingPolicyConfiguration =
        registerOutput<PolicyPredictiveScalingPolicyConfiguration?>(
            'predictiveScalingPolicyConfiguration');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.scalableDimension = registerOutput<String>('scalableDimension');
    this.serviceNamespace = registerOutput<String>('serviceNamespace');
    this.stepScalingPolicyConfiguration =
        registerOutput<PolicyStepScalingPolicyConfiguration?>(
            'stepScalingPolicyConfiguration');
    this.targetTrackingScalingPolicyConfiguration =
        registerOutput<PolicyTargetTrackingScalingPolicyConfiguration?>(
            'targetTrackingScalingPolicyConfiguration');
  }
}
