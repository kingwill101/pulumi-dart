// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_registry_enterprise_sync_rule_registry_enterprise_sync_rule_args_doc}
/// The set of arguments for RegistryEnterpriseSyncRule.
/// {@endtemplate}
/// {@macro pulumi_cs_registry_enterprise_sync_rule_registry_enterprise_sync_rule_args_doc}
class RegistryEnterpriseSyncRuleArgs {
  /// The ID of the Container Registry source instance.
  final pulumi.Input<String> instanceId;
  /// Field `name` has been deprecated from provider version 1.240.0. New field `sync_rule_name` instead.
  final pulumi.Input<String>? name;
  /// The namespace name of the source instance.
  final pulumi.Input<String> namespaceName;
  /// The image repository name of the source instance.
  final pulumi.Input<String>? repoName;
  /// The name of the sync rule.
  final pulumi.Input<String>? syncRuleName;
  /// The synchronization scope. Valid values:
  /// - `REPO`: Encrypts or decrypts data.
  /// - `NAMESPACE`: Generates or verifies a digital signature.
  /// > **NOTE:** From version 1.240.0, `sync_scope` can be set.
  final pulumi.Input<String>? syncScope;
  /// The policy configured to trigger the synchronization rule. Default value: `PASSIVE`. Valid values:
  /// - `INITIATIVE`: Manually triggers the synchronization rule.
  /// - `PASSIVE`: Automatically triggers the synchronization rule.
  final pulumi.Input<String>? syncTrigger;
  /// The regular expression used to filter image tags.
  final pulumi.Input<String> tagFilter;
  /// The ID of the destination instance.
  final pulumi.Input<String> targetInstanceId;
  /// The namespace name of the destination instance.
  final pulumi.Input<String> targetNamespaceName;
  /// The region ID of the destination instance.
  final pulumi.Input<String> targetRegionId;
  /// The image repository name of the destination instance.
  final pulumi.Input<String>? targetRepoName;
  /// The UID of the account to which the target instance belongs.
  final pulumi.Input<String>? targetUserId;

  /// Creates a new [RegistryEnterpriseSyncRuleArgs].
  /// [instanceId] The ID of the Container Registry source instance.
  /// [name] Field `name` has been deprecated from provider version 1.240.0. New field `sync_rule_name` instead.
  /// [namespaceName] The namespace name of the source instance.
  /// [repoName] The image repository name of the source instance.
  /// [syncRuleName] The name of the sync rule.
  /// [syncScope] The synchronization scope. Valid values:
  /// [syncTrigger] The policy configured to trigger the synchronization rule. Default value: `PASSIVE`. Valid values:
  /// [tagFilter] The regular expression used to filter image tags.
  /// [targetInstanceId] The ID of the destination instance.
  /// [targetNamespaceName] The namespace name of the destination instance.
  /// [targetRegionId] The region ID of the destination instance.
  /// [targetRepoName] The image repository name of the destination instance.
  /// [targetUserId] The UID of the account to which the target instance belongs.
  RegistryEnterpriseSyncRuleArgs({
    required this.instanceId,
    this.name,
    required this.namespaceName,
    this.repoName,
    this.syncRuleName,
    this.syncScope,
    this.syncTrigger,
    required this.tagFilter,
    required this.targetInstanceId,
    required this.targetNamespaceName,
    required this.targetRegionId,
    this.targetRepoName,
    this.targetUserId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'namespaceName': namespaceName,
      'repoName': ?repoName,
      'syncRuleName': ?syncRuleName,
      'syncScope': ?syncScope,
      'syncTrigger': ?syncTrigger,
      'tagFilter': tagFilter,
      'targetInstanceId': targetInstanceId,
      'targetNamespaceName': targetNamespaceName,
      'targetRegionId': targetRegionId,
      'targetRepoName': ?targetRepoName,
      'targetUserId': ?targetUserId,
    };
  }

  factory RegistryEnterpriseSyncRuleArgs.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseSyncRuleArgs(
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      repoName: map['repoName'] == null ? null : (map['repoName'] as String).input(),
      syncRuleName: map['syncRuleName'] == null ? null : (map['syncRuleName'] as String).input(),
      syncScope: map['syncScope'] == null ? null : (map['syncScope'] as String).input(),
      syncTrigger: map['syncTrigger'] == null ? null : (map['syncTrigger'] as String).input(),
      tagFilter: (map['tagFilter'] as String).input(),
      targetInstanceId: (map['targetInstanceId'] as String).input(),
      targetNamespaceName: (map['targetNamespaceName'] as String).input(),
      targetRegionId: (map['targetRegionId'] as String).input(),
      targetRepoName: map['targetRepoName'] == null ? null : (map['targetRepoName'] as String).input(),
      targetUserId: map['targetUserId'] == null ? null : (map['targetUserId'] as String).input(),
    );
  }
}

