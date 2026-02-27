import 'package:pulumi/pulumi.dart';
import 'repository_policy_args.dart';

/// Provides an Elastic Container Registry Repository Policy.
///
/// Note that currently only one policy may be applied to a repository.
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
/// * `repository` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repository Policy using the repository name. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repositoryPolicy:RepositoryPolicy example example
/// ```
class RepositoryPolicy extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the repository was created.
  late final Output<String> registryId;

  /// Name of the repository to apply the policy.
  late final Output<String> repository;

  RepositoryPolicy(
    String name, {
    RepositoryPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryPolicy:RepositoryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repository = registerOutput<String>('repository');
  }
}
