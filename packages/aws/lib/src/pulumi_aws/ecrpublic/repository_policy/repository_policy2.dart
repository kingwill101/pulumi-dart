import 'package:pulumi/pulumi.dart';
import 'repository_policy_args2.dart';

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
class RepositoryPolicy2 extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repositoryName;

  RepositoryPolicy2(
    String name, {
    RepositoryPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repositoryPolicy:RepositoryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryName = registerOutput<String>('repositoryName');
  }
}
