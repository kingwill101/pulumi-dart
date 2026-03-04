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
  /// &gt; **NOTE:** From version 1.240.0, `sync_scope` can be set.
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
    this.createTime,
    this.instanceId,
    this.name,
    this.namespaceName,
    this.regionId,
    this.repoName,
    this.repoSyncRuleId,
    this.ruleId,
    this.syncDirection,
    this.syncRuleName,
    this.syncScope,
    this.syncTrigger,
    this.tagFilter,
    this.targetInstanceId,
    this.targetNamespaceName,
    this.targetRegionId,
    this.targetRepoName,
    this.targetUserId,
  });

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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoName: (() {
        final guardedValue = map['repoName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoSyncRuleId: (() {
        final guardedValue = map['repoSyncRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleId: (() {
        final guardedValue = map['ruleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncDirection: (() {
        final guardedValue = map['syncDirection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncRuleName: (() {
        final guardedValue = map['syncRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncScope: (() {
        final guardedValue = map['syncScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      syncTrigger: (() {
        final guardedValue = map['syncTrigger'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagFilter: (() {
        final guardedValue = map['tagFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetInstanceId: (() {
        final guardedValue = map['targetInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetNamespaceName: (() {
        final guardedValue = map['targetNamespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetRegionId: (() {
        final guardedValue = map['targetRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetRepoName: (() {
        final guardedValue = map['targetRepoName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetUserId: (() {
        final guardedValue = map['targetUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
