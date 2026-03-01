// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PullThroughCacheRule resources.
class PullThroughCacheRuleState {
  /// ARN of the Secret which will be used to authenticate against the registry.
  final pulumi.Input<String>? credentialArn;
  /// The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  final pulumi.Input<String>? customRoleArn;
  /// The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  final pulumi.Input<String>? ecrRepositoryPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID where the repository was created.
  final pulumi.Input<String>? registryId;
  /// The registry URL of the upstream registry to use as the source.
  final pulumi.Input<String>? upstreamRegistryUrl;
  /// The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  final pulumi.Input<String>? upstreamRepositoryPrefix;

  /// Creates a new [PullThroughCacheRuleState].
  /// [credentialArn] ARN of the Secret which will be used to authenticate against the registry.
  /// [customRoleArn] The ARN of the IAM role associated with the pull through cache rule. Must be specified if the upstream registry is a cross-account ECR private registry. See [AWS Document - Setting up permissions for cross-account ECR to ECR PTC](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private.html).
  /// [ecrRepositoryPrefix] The repository name prefix to use when caching images from the source registry. Use `ROOT` as the prefix to apply a template to all repositories in your registry that don't have an associated pull through cache rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [upstreamRegistryUrl] The registry URL of the upstream registry to use as the source.
  /// [upstreamRepositoryPrefix] The upstream repository prefix associated with the pull through cache rule. Used if the upstream registry is an ECR private registry. If not specified, it's set to `ROOT`, which allows matching with any upstream repository. See [AWS Document - Customizing repository prefixes for ECR to ECR pull through cache](https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache-private-wildcards.html).
  PullThroughCacheRuleState({
    pulumi.Output<String>? credentialArn,
    pulumi.Output<String>? customRoleArn,
    pulumi.Output<String>? ecrRepositoryPrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<String>? upstreamRegistryUrl,
    pulumi.Output<String>? upstreamRepositoryPrefix,
  }) :
      credentialArn = pulumi.Input.asOptionalInput<String>(credentialArn),
      customRoleArn = pulumi.Input.asOptionalInput<String>(customRoleArn),
      ecrRepositoryPrefix = pulumi.Input.asOptionalInput<String>(ecrRepositoryPrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      upstreamRegistryUrl = pulumi.Input.asOptionalInput<String>(upstreamRegistryUrl),
      upstreamRepositoryPrefix = pulumi.Input.asOptionalInput<String>(upstreamRepositoryPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialArn': ?credentialArn,
      'customRoleArn': ?customRoleArn,
      'ecrRepositoryPrefix': ?ecrRepositoryPrefix,
      'region': ?region,
      'registryId': ?registryId,
      'upstreamRegistryUrl': ?upstreamRegistryUrl,
      'upstreamRepositoryPrefix': ?upstreamRepositoryPrefix,
    };
  }

  factory PullThroughCacheRuleState.fromMap(Map<String, dynamic> map) {
    return PullThroughCacheRuleState(
      credentialArn: map['credentialArn'] == null ? null : pulumi.Output.create<String>(map['credentialArn'] as String),
      customRoleArn: map['customRoleArn'] == null ? null : pulumi.Output.create<String>(map['customRoleArn'] as String),
      ecrRepositoryPrefix: map['ecrRepositoryPrefix'] == null ? null : pulumi.Output.create<String>(map['ecrRepositoryPrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      upstreamRegistryUrl: map['upstreamRegistryUrl'] == null ? null : pulumi.Output.create<String>(map['upstreamRegistryUrl'] as String),
      upstreamRepositoryPrefix: map['upstreamRepositoryPrefix'] == null ? null : pulumi.Output.create<String>(map['upstreamRepositoryPrefix'] as String),
    );
  }
}

