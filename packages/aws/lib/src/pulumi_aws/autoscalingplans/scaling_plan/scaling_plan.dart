import 'package:pulumi/pulumi.dart' as pulumi;
import '../scaling_plan_application_source/scaling_plan_application_source.dart';
import '../scaling_plan_scaling_instruction/scaling_plan_scaling_instruction.dart';
import 'scaling_plan_args.dart';

/// Manages an AWS Auto Scaling scaling plan.
/// More information can be found in the [AWS Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
///
/// > **NOTE:** The AWS Auto Scaling service uses an AWS IAM service-linked role to manage predictive scaling of Amazon EC2 Auto Scaling groups. The service attempts to automatically create this role the first time a scaling plan with predictive scaling enabled is created.
/// An `aws.iam.ServiceLinkedRole` resource can be used to manually manage this role.
/// See the [AWS documentation](https://docs.aws.amazon.com/autoscaling/plans/userguide/aws-auto-scaling-service-linked-roles.html#create-service-linked-role-manual) for more details.
///
/// ## Example Usage
///
/// ### Basic Dynamic Scaling
///
///
///
/// ### Basic Predictive Scaling
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Auto Scaling scaling plans using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscalingplans/scalingPlan:ScalingPlan example MyScale1
/// ```
class ScalingPlan extends pulumi.CustomResource {
  /// CloudFormation stack or set of tags. You can create one scaling plan per application source.
  late final pulumi.Output<ScalingPlanApplicationSource> applicationSource;

  /// Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  late final pulumi.Output<List<ScalingPlanScalingInstruction>>
      scalingInstructions;

  /// The version number of the scaling plan. This value is always 1.
  late final pulumi.Output<int> scalingPlanVersion;

  ScalingPlan(
    String name, {
    ScalingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscalingplans/scalingPlan:ScalingPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationSource =
        registerOutput<ScalingPlanApplicationSource>('applicationSource');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scalingInstructions =
        registerOutput<List<ScalingPlanScalingInstruction>>(
            'scalingInstructions');
    this.scalingPlanVersion = registerOutput<int>('scalingPlanVersion');
  }
}
