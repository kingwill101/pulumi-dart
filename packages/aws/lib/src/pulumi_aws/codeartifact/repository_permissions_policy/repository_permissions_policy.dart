import 'package:pulumi/pulumi.dart';
import 'repository_permissions_policy_args.dart';

/// Provides a CodeArtifact Repostory Permissions Policy Resource.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact repository.
///
///
/// Using `pulumi import`, import CodeArtifact Repository Permissions Policies using the CodeArtifact Repository ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/repositoryPermissionsPolicy:RepositoryPermissionsPolicy example arn:aws:codeartifact:us-west-2:012345678912:repository/tf-acc-test-6968272603913957763/tf-acc-test-6968272603913957763
/// ```
class RepositoryPermissionsPolicy extends CustomResource {
  /// The name of the domain on which to set the resource policy.
  late final Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final Output<String> domainOwner;

  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  late final Output<String> policyDocument;

  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  late final Output<String> policyRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the repository to set the resource policy on.
  late final Output<String> repository;

  /// The ARN of the resource associated with the resource policy.
  late final Output<String> resourceArn;

  RepositoryPermissionsPolicy(
    String name, {
    RepositoryPermissionsPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repositoryPermissionsPolicy:RepositoryPermissionsPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domain = registerOutput<String>('domain');
    this.domainOwner = registerOutput<String>('domainOwner');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyRevision = registerOutput<String>('policyRevision');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
