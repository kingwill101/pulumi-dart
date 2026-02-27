import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_codebuild_args.dart';

/// Provides a CodeBuild Resource Policy Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeBuild resource.
///
///
/// Using `pulumi import`, import CodeBuild Resource Policy using the CodeBuild Resource Policy arn. For example:
///
/// ```sh
/// $ pulumi import aws:codebuild/resourcePolicy:ResourcePolicy example arn:aws:codebuild:us-west-2:123456789:report-group/report-group-name
/// ```
class ResourcePolicyCodebuild extends pulumi.CustomResource {
  /// A JSON-formatted resource policy. For more information, see [Sharing a Projec](https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share) and [Sharing a Report Group](https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share).
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the Project or ReportGroup resource you want to associate with a resource policy.
  late final pulumi.Output<String> resourceArn;

  ResourcePolicyCodebuild(
    String name, {
    ResourcePolicyCodebuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
