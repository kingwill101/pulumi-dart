// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_enterprise_sync_rules_rule.dart';

/// Result data returned by getRegistryEnterpriseSyncRules.
class GetRegistryEnterpriseSyncRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of matched Container Registry Enterprise Edition sync rules. Its element is a sync rule uuid.
  final List<String> ids;
  /// ID of Container Registry Enterprise Edition local instance.
  final String instanceId;
  final String? nameRegex;
  /// A list of sync rule names.
  final List<String> names;
  /// Name of Container Registry Enterprise Edition local namespace.
  final String? namespaceName;
  final String? outputFile;
  /// Name of Container Registry Enterprise Edition local repo.
  final String? repoName;
  /// A list of matched Container Registry Enterprise Edition sync rules. Each element contains the following attributes:
  final List<GetRegistryEnterpriseSyncRulesRule> rules;
  /// ID of Container Registry Enterprise Edition target instance.
  final String? targetInstanceId;

  /// Creates a new [GetRegistryEnterpriseSyncRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Container Registry Enterprise Edition sync rules. Its element is a sync rule uuid.
  /// [instanceId] ID of Container Registry Enterprise Edition local instance.
  /// [nameRegex] Optional.
  /// [names] A list of sync rule names.
  /// [namespaceName] Name of Container Registry Enterprise Edition local namespace.
  /// [outputFile] Optional.
  /// [repoName] Name of Container Registry Enterprise Edition local repo.
  /// [rules] A list of matched Container Registry Enterprise Edition sync rules. Each element contains the following attributes:
  /// [targetInstanceId] ID of Container Registry Enterprise Edition target instance.
  GetRegistryEnterpriseSyncRulesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.namespaceName,
    this.outputFile,
    this.repoName,
    required this.rules,
    this.targetInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'namespaceName': ?namespaceName,
      'outputFile': ?outputFile,
      'repoName': ?repoName,
      'rules': pulumi.Input.encodeList<GetRegistryEnterpriseSyncRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'targetInstanceId': ?targetInstanceId,
    };
  }

  factory GetRegistryEnterpriseSyncRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseSyncRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      namespaceName: map['namespaceName'] == null ? null : map['namespaceName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      repoName: map['repoName'] == null ? null : map['repoName'] as String,
      rules: pulumi.Input.decodeList<GetRegistryEnterpriseSyncRulesRule>(map['rules'], (value) => GetRegistryEnterpriseSyncRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      targetInstanceId: map['targetInstanceId'] == null ? null : map['targetInstanceId'] as String,
    );
  }
}

