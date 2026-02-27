import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_time_update_exclusion_args.dart';

/// Manages an AWS ECR (Elastic Container Registry) Pull Time Update Exclusion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With IAM User
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR (Elastic Container Registry) Pull Time Update Exclusion using the `principal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/pullTimeUpdateExclusion:PullTimeUpdateExclusion example arn:aws:iam::123456789012:role/example-role
/// ```
class PullTimeUpdateExclusion extends pulumi.CustomResource {
  /// ARN of the IAM principal to exclude from having image pull times recorded.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PullTimeUpdateExclusion(
    String name, {
    PullTimeUpdateExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/pullTimeUpdateExclusion:PullTimeUpdateExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.principalArn = registerOutput<String>('principalArn');
    this.region = registerOutput<String>('region');
  }
}
