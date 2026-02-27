import 'package:pulumi/pulumi.dart';
import 'resource_policy_args2.dart';

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
class ResourcePolicy2 extends CustomResource {
  /// A JSON-formatted resource policy. For more information, see [Sharing a Projec](https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share) and [Sharing a Report Group](https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share).
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the Project or ReportGroup resource you want to associate with a resource policy.
  late final Output<String> resourceArn;

  ResourcePolicy2(
    String name, {
    ResourcePolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codebuild/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
