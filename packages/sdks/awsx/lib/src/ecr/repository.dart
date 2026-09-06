import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'package:pulumi_aws/ecr.dart' as pulumi_aws_ecr;

/// A [Repository] represents an [aws.ecr.Repository] along with an associated [LifecyclePolicy] controlling how images are retained in the repo.
///
/// Docker images can be built and pushed to the repo using the [buildAndPushImage] method.  This will call into the `@pulumi/docker/buildAndPushImage` function using this repo as the appropriate destination registry.
class Repository extends pulumi.ComponentResource {
  /// Underlying repository lifecycle policy
  late final pulumi.Output<pulumi_aws_ecr.LifecyclePolicy?> lifecyclePolicy;
  /// Underlying Repository resource
  late final pulumi.Output<pulumi_aws_ecr.Repository?> repository;
  /// The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName).
  late final pulumi.Output<String?> url;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_ecr_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:ecr:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.9.0').merge(options),
          remote: true,
        ) {
    lifecyclePolicy = registerOutput<pulumi_aws_ecr.LifecyclePolicy?>('lifecyclePolicy');
    repository = registerOutput<pulumi_aws_ecr.Repository?>('repository');
    url = registerOutput<String?>('url');
  }
}
