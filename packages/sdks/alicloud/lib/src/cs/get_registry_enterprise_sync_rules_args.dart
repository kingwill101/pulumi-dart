// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_registry_enterprise_sync_rules_get_registry_enterprise_sync_rules_args_doc}
/// Arguments for getRegistryEnterpriseSyncRules.
/// {@endtemplate}
/// {@macro pulumi_cs_get_registry_enterprise_sync_rules_get_registry_enterprise_sync_rules_args_doc}
class GetRegistryEnterpriseSyncRulesArgs {
  /// A list of ids to filter results by sync rule id.
  final pulumi.Input<List<String>>? ids;
  /// ID of Container Registry Enterprise Edition local instance.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter results by sync rule name.
  final pulumi.Input<String>? nameRegex;
  /// Name of Container Registry Enterprise Edition local namespace.
  final pulumi.Input<String>? namespaceName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Name of Container Registry Enterprise Edition local repo.
  final pulumi.Input<String>? repoName;
  /// ID of Container Registry Enterprise Edition target instance.
  final pulumi.Input<String>? targetInstanceId;

  /// Creates a new [GetRegistryEnterpriseSyncRulesArgs].
  /// [ids] A list of ids to filter results by sync rule id.
  /// [instanceId] ID of Container Registry Enterprise Edition local instance.
  /// [nameRegex] A regex string to filter results by sync rule name.
  /// [namespaceName] Name of Container Registry Enterprise Edition local namespace.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [repoName] Name of Container Registry Enterprise Edition local repo.
  /// [targetInstanceId] ID of Container Registry Enterprise Edition target instance.
  GetRegistryEnterpriseSyncRulesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.namespaceName,
    this.outputFile,
    this.repoName,
    this.targetInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'namespaceName': ?namespaceName,
      'outputFile': ?outputFile,
      'repoName': ?repoName,
      'targetInstanceId': ?targetInstanceId,
    };
  }

  factory GetRegistryEnterpriseSyncRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseSyncRulesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName'] as String).input(),
      targetInstanceId: map['targetInstanceId'] == null ? null : (map['targetInstanceId'] as String).input(),
    );
  }
}

