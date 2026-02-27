import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_configuration/policy_predictive_scaling_configuration.dart';
import '../policy_step_adjustment/policy_step_adjustment.dart';
import '../policy_target_tracking_configuration/policy_target_tracking_configuration.dart';
import 'policy_args3.dart';

/// Provides an AutoScaling Scaling Policy resource.
///
/// > **NOTE:** You may want to omit `desired_capacity` attribute from attached `aws.autoscaling.Group`
/// when using autoscaling policies. It's good practice to pick either
/// [manual](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-manual-scaling.html)
/// or [dynamic](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html)
/// (policy-based) scaling.
///
///
///
/// ## Example Usage
///
///
///
/// ### Create target tracking scaling policy using metric math
///
///
///
/// ### Create predictive scaling policy using customized metrics
///
///
///
/// ### Create predictive scaling policy using customized scaling and predefined load metric
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling scaling policy using the role autoscaling_group_name and name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/policy:Policy test-policy asg-name/policy-name
/// ```
class Policy3 extends CustomResource {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  late final Output<String?> adjustmentType;

  /// ARN assigned by AWS to the scaling policy.
  late final Output<String> arn;

  /// Name of the autoscaling group.
  late final Output<String> autoscalingGroupName;

  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  late final Output<int?> cooldown;

  /// Whether the scaling policy is enabled or disabled. Default: `true`.
  ///
  /// The following argument is only available to "SimpleScaling" and "StepScaling" type policies:
  late final Output<bool?> enabled;

  /// Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  late final Output<int?> estimatedInstanceWarmup;

  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  late final Output<String> metricAggregationType;

  /// Minimum value to scale by when `adjustment_type` is set to `PercentChangeInCapacity`.
  ///
  /// The following arguments are only available to "SimpleScaling" type policies:
  late final Output<int?> minAdjustmentMagnitude;

  /// Name of the policy.
  late final Output<String> name;

  /// Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  late final Output<String?> policyType;

  /// Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  late final Output<PolicyPredictiveScalingConfiguration?>
      predictiveScalingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  late final Output<int?> scalingAdjustment;

  /// Set of adjustments that manage
  /// group scaling. These have the following structure:
  ///
  ///
  ///
  /// The following fields are available in step adjustments:
  late final Output<List<PolicyStepAdjustment>?> stepAdjustments;

  /// Target tracking policy. These have the following structure:
  ///
  ///
  ///
  /// The following fields are available in target tracking configuration:
  late final Output<PolicyTargetTrackingConfiguration?>
      targetTrackingConfiguration;

  Policy3(
    String name, {
    PolicyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adjustmentType = registerOutput<String?>('adjustmentType');
    this.arn = registerOutput<String>('arn');
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.cooldown = registerOutput<int?>('cooldown');
    this.enabled = registerOutput<bool?>('enabled');
    this.estimatedInstanceWarmup =
        registerOutput<int?>('estimatedInstanceWarmup');
    this.metricAggregationType =
        registerOutput<String>('metricAggregationType');
    this.minAdjustmentMagnitude =
        registerOutput<int?>('minAdjustmentMagnitude');
    this.name = registerOutput<String>('name');
    this.policyType = registerOutput<String?>('policyType');
    this.predictiveScalingConfiguration =
        registerOutput<PolicyPredictiveScalingConfiguration?>(
            'predictiveScalingConfiguration');
    this.region = registerOutput<String>('region');
    this.scalingAdjustment = registerOutput<int?>('scalingAdjustment');
    this.stepAdjustments =
        registerOutput<List<PolicyStepAdjustment>?>('stepAdjustments');
    this.targetTrackingConfiguration =
        registerOutput<PolicyTargetTrackingConfiguration?>(
            'targetTrackingConfiguration');
  }
}
