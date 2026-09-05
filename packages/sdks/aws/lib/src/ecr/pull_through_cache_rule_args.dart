// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_pull_through_cache_rule_pull_through_cache_rule_args_doc}
/// The set of arguments for PullThroughCacheRule.
/// {@endtemplate}
/// {@macro pulumi_ecr_pull_through_cache_rule_pull_through_cache_rule_args_doc}
class PullThroughCacheRuleArgs {
  /// ARN of the Secret which will be used to authenticate against the registry.
  final pulumi.Input<String?>? credentialArn;
  /// The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  final pulumi.Input<String?>? customRoleArn;
  /// The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  final pulumi.Input<String> ecrRepositoryPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The registry URL of the upstream registry to use as the source.
  final pulumi.Input<String> upstreamRegistryUrl;
  /// The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  final pulumi.Input<String?>? upstreamRepositoryPrefix;

  /// Creates a new [PullThroughCacheRuleArgs].
  /// [credentialArn] ARN of the Secret which will be used to authenticate against the registry.
  /// [customRoleArn] The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  /// [ecrRepositoryPrefix] The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [upstreamRegistryUrl] The registry URL of the upstream registry to use as the source.
  /// [upstreamRepositoryPrefix] The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  const PullThroughCacheRuleArgs({
    this.credentialArn,
    this.customRoleArn,
    required this.ecrRepositoryPrefix,
    this.region,
    required this.upstreamRegistryUrl,
    this.upstreamRepositoryPrefix,
  });

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
      credentialArn: (() { final guardedValue = map['credentialArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customRoleArn: (() { final guardedValue = map['customRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ecrRepositoryPrefix: pulumi.Input.fromValue(map['ecrRepositoryPrefix'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upstreamRegistryUrl: pulumi.Input.fromValue(map['upstreamRegistryUrl'] as String),
      upstreamRepositoryPrefix: (() { final guardedValue = map['upstreamRepositoryPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
