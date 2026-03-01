// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_cache_rule_args_doc}
/// The set of arguments for CacheRule.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_cache_rule_args_doc}
class CacheRuleArgs {
  /// The name of the cache rule.
  final pulumi.Input<String>? cacheRuleName;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  final pulumi.Input<String>? credentialSetResourceId;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Source repository pulled from upstream.
  final pulumi.Input<String>? sourceRepository;
  /// Target repository specified in docker pull command.
  /// Eg: docker pull myregistry.azurecr.io/{targetRepository}:{tag}
  final pulumi.Input<String>? targetRepository;

  /// Creates a new [CacheRuleArgs].
  /// [cacheRuleName] The name of the cache rule.
  /// [credentialSetResourceId] The ARM resource ID of the credential store which is associated with the cache rule.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceRepository] Source repository pulled from upstream.
  /// [targetRepository] Target repository specified in docker pull command.
  CacheRuleArgs({
    pulumi.Output<String>? cacheRuleName,
    pulumi.Output<String>? credentialSetResourceId,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceRepository,
    pulumi.Output<String>? targetRepository,
  }) :
      cacheRuleName = pulumi.Input.asOptionalInput<String>(cacheRuleName),
      credentialSetResourceId = pulumi.Input.asOptionalInput<String>(credentialSetResourceId),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceRepository = pulumi.Input.asOptionalInput<String>(sourceRepository),
      targetRepository = pulumi.Input.asOptionalInput<String>(targetRepository);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheRuleName': ?cacheRuleName,
      'credentialSetResourceId': ?credentialSetResourceId,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'sourceRepository': ?sourceRepository,
      'targetRepository': ?targetRepository,
    };
  }

  factory CacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return CacheRuleArgs(
      cacheRuleName: map['cacheRuleName'] == null ? null : pulumi.Output.create<String>(map['cacheRuleName'] as String),
      credentialSetResourceId: map['credentialSetResourceId'] == null ? null : pulumi.Output.create<String>(map['credentialSetResourceId'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceRepository: map['sourceRepository'] == null ? null : pulumi.Output.create<String>(map['sourceRepository'] as String),
      targetRepository: map['targetRepository'] == null ? null : pulumi.Output.create<String>(map['targetRepository'] as String),
    );
  }
}

