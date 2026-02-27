import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_permissions_args.dart';

/// Provides a CodeArtifact Domains Permissions Policy Resource.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact domain.
///
///
/// Using `pulumi import`, import CodeArtifact Domain Permissions Policies using the CodeArtifact Domain ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/domainPermissions:DomainPermissions example arn:aws:codeartifact:us-west-2:012345678912:domain/tf-acc-test-1928056699409417367
/// ```
class DomainPermissions extends pulumi.CustomResource {
  /// The name of the domain on which to set the resource policy.
  late final pulumi.Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final pulumi.Output<String> domainOwner;

  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  late final pulumi.Output<String> policyDocument;

  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  late final pulumi.Output<String> policyRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the resource associated with the resource policy.
  late final pulumi.Output<String> resourceArn;

  DomainPermissions(
    String name, {
    DomainPermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/domainPermissions:DomainPermissions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domain = registerOutput<String>('domain');
    this.domainOwner = registerOutput<String>('domainOwner');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyRevision = registerOutput<String>('policyRevision');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
