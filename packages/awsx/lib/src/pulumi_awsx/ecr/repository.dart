import 'package:pulumi/pulumi.dart';
import 'repository_args.dart';

/// A [Repository] represents an [aws.ecr.Repository] along with an associated [LifecyclePolicy] controlling how images are retained in the repo.
///
/// Docker images can be built and pushed to the repo using the [buildAndPushImage] method.  This will call into the `@pulumi/docker/buildAndPushImage` function using this repo as the appropriate destination registry.
class Repository extends ComponentResource {
  /// Underlying repository lifecycle policy
  late final Output<dynamic> lifecyclePolicy;

  /// Underlying Repository resource
  late final Output<dynamic> repository;

  /// The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName).
  late final Output<String> url;

  Repository(
    String name, {
    RepositoryArgs? args,
    ComponentResourceOptions? options,
  }) : super(
          'awsx:ecr:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? ComponentResourceOptions(),
        ) {
    this.lifecyclePolicy = registerOutput<dynamic>('lifecyclePolicy');
    this.repository = registerOutput<dynamic>('repository');
    this.url = registerOutput<String>('url');
  }
}
