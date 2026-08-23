// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPullThroughCacheRule.
class GetPullThroughCacheRuleResult {
  /// ARN of the Secret which will be used to authenticate against the registry.
  final String credentialArn;
  /// The ARN of the IAM role associated with the pull through cache rule. Used if the upstream registry is a cross-account ECR private registry.
  final String customRoleArn;
  final String ecrRepositoryPrefix;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// The registry ID where the repository was created.
  final String registryId;
  /// The registry URL of the upstream registry to use as the source.
  final String upstreamRegistryUrl;
  /// The upstream repository prefix associated with the pull through cache rule.
  final String upstreamRepositoryPrefix;

  /// Creates a new [GetPullThroughCacheRuleResult].
  /// [credentialArn] ARN of the Secret which will be used to authenticate against the registry.
  /// [customRoleArn] The ARN of the IAM role associated with the pull through cache rule. Used if the upstream registry is a cross-account ECR private registry.
  /// [ecrRepositoryPrefix] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [registryId] The registry ID where the repository was created.
  /// [upstreamRegistryUrl] The registry URL of the upstream registry to use as the source.
  /// [upstreamRepositoryPrefix] The upstream repository prefix associated with the pull through cache rule.
  const GetPullThroughCacheRuleResult({
    required this.credentialArn,
    required this.customRoleArn,
    required this.ecrRepositoryPrefix,
    required this.id,
    required this.region,
    required this.registryId,
    required this.upstreamRegistryUrl,
    required this.upstreamRepositoryPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialArn': credentialArn,
      'customRoleArn': customRoleArn,
      'ecrRepositoryPrefix': ecrRepositoryPrefix,
      'id': id,
      'region': region,
      'registryId': registryId,
      'upstreamRegistryUrl': upstreamRegistryUrl,
      'upstreamRepositoryPrefix': upstreamRepositoryPrefix,
    };
  }

  factory GetPullThroughCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetPullThroughCacheRuleResult(
      credentialArn: map['credentialArn'] as String,
      customRoleArn: map['customRoleArn'] as String,
      ecrRepositoryPrefix: map['ecrRepositoryPrefix'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      registryId: map['registryId'] as String,
      upstreamRegistryUrl: map['upstreamRegistryUrl'] as String,
      upstreamRepositoryPrefix: map['upstreamRepositoryPrefix'] as String,
    );
  }
}
