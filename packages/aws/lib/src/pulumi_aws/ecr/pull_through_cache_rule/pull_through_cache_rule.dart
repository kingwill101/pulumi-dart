import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_through_cache_rule_args.dart';

/// Provides an Elastic Container Registry Pull Through Cache Rule.
///
/// More information about pull through cache rules, including the set of supported
/// upstream repositories, see [Using pull through cache rules](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a pull-through cache rule using the `ecr_repository_prefix`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/pullThroughCacheRule:PullThroughCacheRule example ecr-public
/// ```
class PullThroughCacheRule extends pulumi.CustomResource {
  /// ARN of the Secret which will be used to authenticate against the registry.
  late final pulumi.Output<String?> credentialArn;

  /// The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  late final pulumi.Output<String?> customRoleArn;

  /// The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  late final pulumi.Output<String> ecrRepositoryPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;

  /// The registry URL of the upstream registry to use as the source.
  late final pulumi.Output<String> upstreamRegistryUrl;

  /// The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  late final pulumi.Output<String?> upstreamRepositoryPrefix;

  PullThroughCacheRule(
    String name, {
    PullThroughCacheRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/pullThroughCacheRule:PullThroughCacheRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.credentialArn = registerOutput<String?>('credentialArn');
    this.customRoleArn = registerOutput<String?>('customRoleArn');
    this.ecrRepositoryPrefix = registerOutput<String>('ecrRepositoryPrefix');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.upstreamRegistryUrl = registerOutput<String>('upstreamRegistryUrl');
    this.upstreamRepositoryPrefix =
        registerOutput<String?>('upstreamRepositoryPrefix');
  }
}
