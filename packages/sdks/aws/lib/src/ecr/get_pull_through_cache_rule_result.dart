// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPullThroughCacheRule.
class GetPullThroughCacheRuleResult {
  /// ARN of the Secret which will be used to authenticate against the registry.
  final String? credentialArn;
  /// The ARN of the IAM role associated with the pull through cache rule. Used if the upstream registry is a cross-account ECR private registry.
  final String? customRoleArn;
  final String? ecrRepositoryPrefix;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// The registry ID where the repository was created.
  final String? registryId;
  /// The registry URL of the upstream registry to use as the source.
  final String? upstreamRegistryUrl;
  /// The upstream repository prefix associated with the pull through cache rule.
  final String? upstreamRepositoryPrefix;

  /// Creates a new [GetPullThroughCacheRuleResult].
  /// [credentialArn] ARN of the Secret which will be used to authenticate against the registry.
  /// [customRoleArn] The ARN of the IAM role associated with the pull through cache rule. Used if the upstream registry is a cross-account ECR private registry.
  /// [ecrRepositoryPrefix] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [registryId] The registry ID where the repository was created.
  /// [upstreamRegistryUrl] The registry URL of the upstream registry to use as the source.
  /// [upstreamRepositoryPrefix] The upstream repository prefix associated with the pull through cache rule.
  const GetPullThroughCacheRuleResult({
    this.credentialArn,
    this.customRoleArn,
    this.ecrRepositoryPrefix,
    this.id,
    this.region,
    this.registryId,
    this.upstreamRegistryUrl,
    this.upstreamRepositoryPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialArn': ?credentialArn,
      'customRoleArn': ?customRoleArn,
      'ecrRepositoryPrefix': ?ecrRepositoryPrefix,
      'id': ?id,
      'region': ?region,
      'registryId': ?registryId,
      'upstreamRegistryUrl': ?upstreamRegistryUrl,
      'upstreamRepositoryPrefix': ?upstreamRepositoryPrefix,
    };
  }

  factory GetPullThroughCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetPullThroughCacheRuleResult(
      credentialArn: (() { final guardedValue = map['credentialArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRoleArn: (() { final guardedValue = map['customRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ecrRepositoryPrefix: (() { final guardedValue = map['ecrRepositoryPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upstreamRegistryUrl: (() { final guardedValue = map['upstreamRegistryUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upstreamRepositoryPrefix: (() { final guardedValue = map['upstreamRepositoryPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
