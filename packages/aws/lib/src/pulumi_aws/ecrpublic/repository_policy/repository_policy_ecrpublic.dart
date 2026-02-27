import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_policy_ecrpublic_args.dart';

/// Provides an Elastic Container Registry Public Repository Policy.
///
/// Note that currently only one policy may be applied to a repository.
///
/// > **NOTE:** This resource can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Public Repository Policy using the repository name. For example:
///
/// ```sh
/// $ pulumi import aws:ecrpublic/repositoryPolicy:RepositoryPolicy example example
/// ```
class RepositoryPolicyEcrpublic extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final pulumi.Output<String> repositoryName;

  RepositoryPolicyEcrpublic(
    String name, {
    RepositoryPolicyEcrpublicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repositoryPolicy:RepositoryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryName = registerOutput<String>('repositoryName');
  }
}
