// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for PullThroughCacheRule.
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

  PullThroughCacheRuleArgs({
    this.credentialArn,
    this.customRoleArn,
    required this.ecrRepositoryPrefix,
    this.region,
    required this.upstreamRegistryUrl,
    this.upstreamRepositoryPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final credentialArnValue = credentialArn;
    if (credentialArnValue != null) {
      map['credentialArn'] = credentialArnValue;
    }
    final customRoleArnValue = customRoleArn;
    if (customRoleArnValue != null) {
      map['customRoleArn'] = customRoleArnValue;
    }
    map['ecrRepositoryPrefix'] = ecrRepositoryPrefix;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['upstreamRegistryUrl'] = upstreamRegistryUrl;
    final upstreamRepositoryPrefixValue = upstreamRepositoryPrefix;
    if (upstreamRepositoryPrefixValue != null) {
      map['upstreamRepositoryPrefix'] = upstreamRepositoryPrefixValue;
    }
    return map;
  }

  factory PullThroughCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return PullThroughCacheRuleArgs(
      credentialArn: pulumi.Input.asOptionalInput<String>(map['credentialArn']),
      customRoleArn: pulumi.Input.asOptionalInput<String>(map['customRoleArn']),
      ecrRepositoryPrefix:
          pulumi.Input.asInput<String>(map['ecrRepositoryPrefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      upstreamRegistryUrl:
          pulumi.Input.asInput<String>(map['upstreamRegistryUrl']),
      upstreamRepositoryPrefix:
          pulumi.Input.asOptionalInput<String>(map['upstreamRepositoryPrefix']),
    );
  }
}
