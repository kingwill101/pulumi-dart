// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_cross_region_copy_info.dart';
import 'enterprise_snapshot_policy_retain_rule.dart';
import 'enterprise_snapshot_policy_schedule.dart';
import 'enterprise_snapshot_policy_special_retain_rules.dart';
import 'enterprise_snapshot_policy_storage_rule.dart';

/// Input properties used for looking up and filtering EnterpriseSnapshotPolicy resources.
class EnterpriseSnapshotPolicyState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Snapshot replication information. See `cross_region_copy_info` below.
  final pulumi.Input<EnterpriseSnapshotPolicyCrossRegionCopyInfo>? crossRegionCopyInfo;
  /// Description information representing the resource.
  final pulumi.Input<String>? desc;
  /// The name of the resource.
  final pulumi.Input<String>? enterpriseSnapshotPolicyName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// Snapshot retention policy representing resources. See `retain_rule` below.
  final pulumi.Input<EnterpriseSnapshotPolicyRetainRule>? retainRule;
  /// The scheduling plan that represents the resource. See `schedule` below.
  final pulumi.Input<EnterpriseSnapshotPolicySchedule>? schedule;
  /// Snapshot special retention rules. See `special_retain_rules` below.
  final pulumi.Input<EnterpriseSnapshotPolicySpecialRetainRules>? specialRetainRules;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Snapshot storage policy. See `storage_rule` below.
  final pulumi.Input<EnterpriseSnapshotPolicyStorageRule>? storageRule;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Represents the target type of resource binding.
  final pulumi.Input<String>? targetType;

  /// Creates a new [EnterpriseSnapshotPolicyState].
  /// [createTime] The creation time of the resource.
  /// [crossRegionCopyInfo] Snapshot replication information. See `cross_region_copy_info` below.
  /// [desc] Description information representing the resource.
  /// [enterpriseSnapshotPolicyName] The name of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [retainRule] Snapshot retention policy representing resources. See `retain_rule` below.
  /// [schedule] The scheduling plan that represents the resource. See `schedule` below.
  /// [specialRetainRules] Snapshot special retention rules. See `special_retain_rules` below.
  /// [status] The status of the resource.
  /// [storageRule] Snapshot storage policy. See `storage_rule` below.
  /// [tags] The tag of the resource.
  /// [targetType] Represents the target type of resource binding.
  EnterpriseSnapshotPolicyState({
    this.createTime,
    this.crossRegionCopyInfo,
    this.desc,
    this.enterpriseSnapshotPolicyName,
    this.resourceGroupId,
    this.retainRule,
    this.schedule,
    this.specialRetainRules,
    this.status,
    this.storageRule,
    this.tags,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'crossRegionCopyInfo': ?pulumi.Input.mapOptionalInputValue<EnterpriseSnapshotPolicyCrossRegionCopyInfo, Map<String, dynamic>>(crossRegionCopyInfo, (value) => value.toMap()),
      'desc': ?desc,
      'enterpriseSnapshotPolicyName': ?enterpriseSnapshotPolicyName,
      'resourceGroupId': ?resourceGroupId,
      'retainRule': ?pulumi.Input.mapOptionalInputValue<EnterpriseSnapshotPolicyRetainRule, Map<String, dynamic>>(retainRule, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<EnterpriseSnapshotPolicySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'specialRetainRules': ?pulumi.Input.mapOptionalInputValue<EnterpriseSnapshotPolicySpecialRetainRules, Map<String, dynamic>>(specialRetainRules, (value) => value.toMap()),
      'status': ?status,
      'storageRule': ?pulumi.Input.mapOptionalInputValue<EnterpriseSnapshotPolicyStorageRule, Map<String, dynamic>>(storageRule, (value) => value.toMap()),
      'tags': ?tags,
      'targetType': ?targetType,
    };
  }

  factory EnterpriseSnapshotPolicyState.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      crossRegionCopyInfo: map['crossRegionCopyInfo'] == null ? null : (EnterpriseSnapshotPolicyCrossRegionCopyInfo.fromMap((map['crossRegionCopyInfo']! as Map).cast<String, dynamic>())).input(),
      desc: map['desc'] == null ? null : (map['desc']! as String).input(),
      enterpriseSnapshotPolicyName: map['enterpriseSnapshotPolicyName'] == null ? null : (map['enterpriseSnapshotPolicyName']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      retainRule: map['retainRule'] == null ? null : (EnterpriseSnapshotPolicyRetainRule.fromMap((map['retainRule']! as Map).cast<String, dynamic>())).input(),
      schedule: map['schedule'] == null ? null : (EnterpriseSnapshotPolicySchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      specialRetainRules: map['specialRetainRules'] == null ? null : (EnterpriseSnapshotPolicySpecialRetainRules.fromMap((map['specialRetainRules']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      storageRule: map['storageRule'] == null ? null : (EnterpriseSnapshotPolicyStorageRule.fromMap((map['storageRule']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      targetType: map['targetType'] == null ? null : (map['targetType']! as String).input(),
    );
  }
}

