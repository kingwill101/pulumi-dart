// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_cache_rule_args_doc}
/// Arguments for getCacheRule.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_cache_rule_args_doc}
class GetCacheRuleArgs {
  /// The name of the cache rule.
  final pulumi.Input<String> cacheRuleName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCacheRuleArgs].
  /// [cacheRuleName] The name of the cache rule.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCacheRuleArgs({
    required String cacheRuleName,
    required String registryName,
    required String resourceGroupName,
  }) :
      cacheRuleName = pulumi.Input.asInput<String>(cacheRuleName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheRuleName': cacheRuleName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetCacheRuleArgs(
      cacheRuleName: map['cacheRuleName'] as String,
      registryName: map['registryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

