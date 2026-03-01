// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_pull_through_cache_rule_pull_through_cache_rule_args_doc}
/// The set of arguments for PullThroughCacheRule.
/// {@endtemplate}
/// {@macro pulumi_ecr_pull_through_cache_rule_pull_through_cache_rule_args_doc}
class PullThroughCacheRuleArgs {
  /// ARN of the Secret which will be used to authenticate against the registry.
  final pulumi.Input<String>? credentialArn;

  /// The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  final pulumi.Input<String>? customRoleArn;

  /// The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  final pulumi.Input<String> ecrRepositoryPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The registry URL of the upstream registry to use as the source.
  final pulumi.Input<String> upstreamRegistryUrl;

  /// The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  final pulumi.Input<String>? upstreamRepositoryPrefix;

  /// Creates a new [PullThroughCacheRuleArgs].
  /// [credentialArn] ARN of the Secret which will be used to authenticate against the registry.
  /// [customRoleArn] The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  /// [ecrRepositoryPrefix] The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [upstreamRegistryUrl] The registry URL of the upstream registry to use as the source.
  /// [upstreamRepositoryPrefix] The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  PullThroughCacheRuleArgs({
    String? credentialArn,
    String? customRoleArn,
    required String ecrRepositoryPrefix,
    String? region,
    required String upstreamRegistryUrl,
    String? upstreamRepositoryPrefix,
  }) : credentialArn = pulumi.Input.asOptionalInput<String>(credentialArn),
       customRoleArn = pulumi.Input.asOptionalInput<String>(customRoleArn),
       ecrRepositoryPrefix = pulumi.Input.asInput<String>(ecrRepositoryPrefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       upstreamRegistryUrl = pulumi.Input.asInput<String>(upstreamRegistryUrl),
       upstreamRepositoryPrefix = pulumi.Input.asOptionalInput<String>(
         upstreamRepositoryPrefix,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialArn': ?credentialArn,
      'customRoleArn': ?customRoleArn,
      'ecrRepositoryPrefix': ecrRepositoryPrefix,
      'region': ?region,
      'upstreamRegistryUrl': upstreamRegistryUrl,
      'upstreamRepositoryPrefix': ?upstreamRepositoryPrefix,
    };
  }

  factory PullThroughCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return PullThroughCacheRuleArgs(
      credentialArn: map['credentialArn'] == null
          ? null
          : map['credentialArn'] as String,
      customRoleArn: map['customRoleArn'] == null
          ? null
          : map['customRoleArn'] as String,
      ecrRepositoryPrefix: map['ecrRepositoryPrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      upstreamRegistryUrl: map['upstreamRegistryUrl'] as String,
      upstreamRepositoryPrefix: map['upstreamRepositoryPrefix'] == null
          ? null
          : map['upstreamRepositoryPrefix'] as String,
    );
  }
}
