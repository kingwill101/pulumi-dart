// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryEnterpriseSyncRulesRule {
  /// ID of Container Registry Enterprise Edition sync rule.
  final pulumi.Input<String> id;
  /// ID of Container Registry Enterprise Edition local instance.
  final pulumi.Input<String> instanceId;
  /// Name of Container Registry Enterprise Edition sync rule.
  final pulumi.Input<String> name;
  /// Name of Container Registry Enterprise Edition local namespace.
  final pulumi.Input<String> namespaceName;
  /// Region of Container Registry Enterprise Edition local instance.
  final pulumi.Input<String> regionId;
  /// Name of Container Registry Enterprise Edition local repo.
  final pulumi.Input<String> repoName;
  /// `FROM` or `TO`, the direction of synchronization. `FROM` indicates that the local instance is the source instance. `TO` indicates that the local instance is the target instance to be synchronized.
  final pulumi.Input<String> syncDirection;
  /// `REPO` or `NAMESPACE`,the scope that the synchronization rule applies.
  final pulumi.Input<String> syncScope;
  /// `PASSIVE` or `INITIATIVE`, the policy configured to trigger the synchronization rule.
  final pulumi.Input<String> syncTrigger;
  /// The regular expression used to filter image tags for synchronization in the source repository.
  final pulumi.Input<String> tagFilter;
  /// ID of Container Registry Enterprise Edition target instance.
  final pulumi.Input<String> targetInstanceId;
  /// Name of Container Registry Enterprise Edition target namespace.
  final pulumi.Input<String> targetNamespaceName;
  /// Region of Container Registry Enterprise Edition target instance.
  final pulumi.Input<String> targetRegionId;
  /// Name of Container Registry Enterprise Edition target repo.
  final pulumi.Input<String> targetRepoName;

  /// Creates a new [GetRegistryEnterpriseSyncRulesRule].
  /// [id] ID of Container Registry Enterprise Edition sync rule.
  /// [instanceId] ID of Container Registry Enterprise Edition local instance.
  /// [name] Name of Container Registry Enterprise Edition sync rule.
  /// [namespaceName] Name of Container Registry Enterprise Edition local namespace.
  /// [regionId] Region of Container Registry Enterprise Edition local instance.
  /// [repoName] Name of Container Registry Enterprise Edition local repo.
  /// [syncDirection] `FROM` or `TO`, the direction of synchronization. `FROM` indicates that the local instance is the source instance. `TO` indicates that the local instance is the target instance to be synchronized.
  /// [syncScope] `REPO` or `NAMESPACE`,the scope that the synchronization rule applies.
  /// [syncTrigger] `PASSIVE` or `INITIATIVE`, the policy configured to trigger the synchronization rule.
  /// [tagFilter] The regular expression used to filter image tags for synchronization in the source repository.
  /// [targetInstanceId] ID of Container Registry Enterprise Edition target instance.
  /// [targetNamespaceName] Name of Container Registry Enterprise Edition target namespace.
  /// [targetRegionId] Region of Container Registry Enterprise Edition target instance.
  /// [targetRepoName] Name of Container Registry Enterprise Edition target repo.
  GetRegistryEnterpriseSyncRulesRule({
    required this.id,
    required this.instanceId,
    required this.name,
    required this.namespaceName,
    required this.regionId,
    required this.repoName,
    required this.syncDirection,
    required this.syncScope,
    required this.syncTrigger,
    required this.tagFilter,
    required this.targetInstanceId,
    required this.targetNamespaceName,
    required this.targetRegionId,
    required this.targetRepoName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'name': name,
      'namespaceName': namespaceName,
      'regionId': regionId,
      'repoName': repoName,
      'syncDirection': syncDirection,
      'syncScope': syncScope,
      'syncTrigger': syncTrigger,
      'tagFilter': tagFilter,
      'targetInstanceId': targetInstanceId,
      'targetNamespaceName': targetNamespaceName,
      'targetRegionId': targetRegionId,
      'targetRepoName': targetRepoName,
    };
  }

  factory GetRegistryEnterpriseSyncRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRegistryEnterpriseSyncRulesRule(
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      syncDirection: pulumi.Input.fromValue(map['syncDirection'] as String),
      syncScope: pulumi.Input.fromValue(map['syncScope'] as String),
      syncTrigger: pulumi.Input.fromValue(map['syncTrigger'] as String),
      tagFilter: pulumi.Input.fromValue(map['tagFilter'] as String),
      targetInstanceId: pulumi.Input.fromValue(map['targetInstanceId'] as String),
      targetNamespaceName: pulumi.Input.fromValue(map['targetNamespaceName'] as String),
      targetRegionId: pulumi.Input.fromValue(map['targetRegionId'] as String),
      targetRepoName: pulumi.Input.fromValue(map['targetRepoName'] as String),
    );
  }
}

