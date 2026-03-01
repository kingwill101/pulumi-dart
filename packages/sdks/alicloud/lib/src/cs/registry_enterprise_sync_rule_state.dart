// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryEnterpriseSyncRule resources.
class RegistryEnterpriseSyncRuleState {
  /// (Available since v1.240.0) The time when the synchronization rule was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the Container Registry source instance.
  final pulumi.Input<String>? instanceId;
  /// Field `name` has been deprecated from provider version 1.240.0. New field `sync_rule_name` instead.
  final pulumi.Input<String>? name;
  /// The namespace name of the source instance.
  final pulumi.Input<String>? namespaceName;
  /// (Available since v1.240.0) The region ID of the source instance.
  final pulumi.Input<String>? regionId;
  /// The image repository name of the source instance.
  final pulumi.Input<String>? repoName;
  /// (Available since v1.240.0) The ID of the synchronization rule.
  final pulumi.Input<String>? repoSyncRuleId;
  /// (Deprecated since v1.240.0) Field `rule_id` has been deprecated from provider version 1.240.0. New field `repo_sync_rule_id` instead.
  final pulumi.Input<String>? ruleId;
  /// The synchronization direction.
  final pulumi.Input<String>? syncDirection;
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
  final pulumi.Input<String>? tagFilter;
  /// The ID of the destination instance.
  final pulumi.Input<String>? targetInstanceId;
  /// The namespace name of the destination instance.
  final pulumi.Input<String>? targetNamespaceName;
  /// The region ID of the destination instance.
  final pulumi.Input<String>? targetRegionId;
  /// The image repository name of the destination instance.
  final pulumi.Input<String>? targetRepoName;
  /// The UID of the account to which the target instance belongs.
  final pulumi.Input<String>? targetUserId;

  /// Creates a new [RegistryEnterpriseSyncRuleState].
  /// [createTime] (Available since v1.240.0) The time when the synchronization rule was created.
  /// [instanceId] The ID of the Container Registry source instance.
  /// [name] Field `name` has been deprecated from provider version 1.240.0. New field `sync_rule_name` instead.
  /// [namespaceName] The namespace name of the source instance.
  /// [regionId] (Available since v1.240.0) The region ID of the source instance.
  /// [repoName] The image repository name of the source instance.
  /// [repoSyncRuleId] (Available since v1.240.0) The ID of the synchronization rule.
  /// [ruleId] (Deprecated since v1.240.0) Field `rule_id` has been deprecated from provider version 1.240.0. New field `repo_sync_rule_id` instead.
  /// [syncDirection] The synchronization direction.
  /// [syncRuleName] The name of the sync rule.
  /// [syncScope] The synchronization scope. Valid values:
  /// [syncTrigger] The policy configured to trigger the synchronization rule. Default value: `PASSIVE`. Valid values:
  /// [tagFilter] The regular expression used to filter image tags.
  /// [targetInstanceId] The ID of the destination instance.
  /// [targetNamespaceName] The namespace name of the destination instance.
  /// [targetRegionId] The region ID of the destination instance.
  /// [targetRepoName] The image repository name of the destination instance.
  /// [targetUserId] The UID of the account to which the target instance belongs.
  RegistryEnterpriseSyncRuleState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? repoName,
    pulumi.Output<String>? repoSyncRuleId,
    pulumi.Output<String>? ruleId,
    pulumi.Output<String>? syncDirection,
    pulumi.Output<String>? syncRuleName,
    pulumi.Output<String>? syncScope,
    pulumi.Output<String>? syncTrigger,
    pulumi.Output<String>? tagFilter,
    pulumi.Output<String>? targetInstanceId,
    pulumi.Output<String>? targetNamespaceName,
    pulumi.Output<String>? targetRegionId,
    pulumi.Output<String>? targetRepoName,
    pulumi.Output<String>? targetUserId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      repoName = pulumi.Input.asOptionalInput<String>(repoName),
      repoSyncRuleId = pulumi.Input.asOptionalInput<String>(repoSyncRuleId),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      syncDirection = pulumi.Input.asOptionalInput<String>(syncDirection),
      syncRuleName = pulumi.Input.asOptionalInput<String>(syncRuleName),
      syncScope = pulumi.Input.asOptionalInput<String>(syncScope),
      syncTrigger = pulumi.Input.asOptionalInput<String>(syncTrigger),
      tagFilter = pulumi.Input.asOptionalInput<String>(tagFilter),
      targetInstanceId = pulumi.Input.asOptionalInput<String>(targetInstanceId),
      targetNamespaceName = pulumi.Input.asOptionalInput<String>(targetNamespaceName),
      targetRegionId = pulumi.Input.asOptionalInput<String>(targetRegionId),
      targetRepoName = pulumi.Input.asOptionalInput<String>(targetRepoName),
      targetUserId = pulumi.Input.asOptionalInput<String>(targetUserId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'name': ?name,
      'namespaceName': ?namespaceName,
      'regionId': ?regionId,
      'repoName': ?repoName,
      'repoSyncRuleId': ?repoSyncRuleId,
      'ruleId': ?ruleId,
      'syncDirection': ?syncDirection,
      'syncRuleName': ?syncRuleName,
      'syncScope': ?syncScope,
      'syncTrigger': ?syncTrigger,
      'tagFilter': ?tagFilter,
      'targetInstanceId': ?targetInstanceId,
      'targetNamespaceName': ?targetNamespaceName,
      'targetRegionId': ?targetRegionId,
      'targetRepoName': ?targetRepoName,
      'targetUserId': ?targetUserId,
    };
  }

  factory RegistryEnterpriseSyncRuleState.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseSyncRuleState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      repoName: map['repoName'] == null ? null : pulumi.Output.create<String>(map['repoName'] as String),
      repoSyncRuleId: map['repoSyncRuleId'] == null ? null : pulumi.Output.create<String>(map['repoSyncRuleId'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      syncDirection: map['syncDirection'] == null ? null : pulumi.Output.create<String>(map['syncDirection'] as String),
      syncRuleName: map['syncRuleName'] == null ? null : pulumi.Output.create<String>(map['syncRuleName'] as String),
      syncScope: map['syncScope'] == null ? null : pulumi.Output.create<String>(map['syncScope'] as String),
      syncTrigger: map['syncTrigger'] == null ? null : pulumi.Output.create<String>(map['syncTrigger'] as String),
      tagFilter: map['tagFilter'] == null ? null : pulumi.Output.create<String>(map['tagFilter'] as String),
      targetInstanceId: map['targetInstanceId'] == null ? null : pulumi.Output.create<String>(map['targetInstanceId'] as String),
      targetNamespaceName: map['targetNamespaceName'] == null ? null : pulumi.Output.create<String>(map['targetNamespaceName'] as String),
      targetRegionId: map['targetRegionId'] == null ? null : pulumi.Output.create<String>(map['targetRegionId'] as String),
      targetRepoName: map['targetRepoName'] == null ? null : pulumi.Output.create<String>(map['targetRepoName'] as String),
      targetUserId: map['targetUserId'] == null ? null : pulumi.Output.create<String>(map['targetUserId'] as String),
    );
  }
}

