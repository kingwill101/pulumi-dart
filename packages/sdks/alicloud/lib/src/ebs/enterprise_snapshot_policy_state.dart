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
    pulumi.Output<String>? createTime,
    pulumi.Output<EnterpriseSnapshotPolicyCrossRegionCopyInfo>? crossRegionCopyInfo,
    pulumi.Output<String>? desc,
    pulumi.Output<String>? enterpriseSnapshotPolicyName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<EnterpriseSnapshotPolicyRetainRule>? retainRule,
    pulumi.Output<EnterpriseSnapshotPolicySchedule>? schedule,
    pulumi.Output<EnterpriseSnapshotPolicySpecialRetainRules>? specialRetainRules,
    pulumi.Output<String>? status,
    pulumi.Output<EnterpriseSnapshotPolicyStorageRule>? storageRule,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetType,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      crossRegionCopyInfo = pulumi.Input.asOptionalInput<EnterpriseSnapshotPolicyCrossRegionCopyInfo>(crossRegionCopyInfo),
      desc = pulumi.Input.asOptionalInput<String>(desc),
      enterpriseSnapshotPolicyName = pulumi.Input.asOptionalInput<String>(enterpriseSnapshotPolicyName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      retainRule = pulumi.Input.asOptionalInput<EnterpriseSnapshotPolicyRetainRule>(retainRule),
      schedule = pulumi.Input.asOptionalInput<EnterpriseSnapshotPolicySchedule>(schedule),
      specialRetainRules = pulumi.Input.asOptionalInput<EnterpriseSnapshotPolicySpecialRetainRules>(specialRetainRules),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageRule = pulumi.Input.asOptionalInput<EnterpriseSnapshotPolicyStorageRule>(storageRule),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      crossRegionCopyInfo: map['crossRegionCopyInfo'] == null ? null : pulumi.Output.create<EnterpriseSnapshotPolicyCrossRegionCopyInfo>(EnterpriseSnapshotPolicyCrossRegionCopyInfo.fromMap((map['crossRegionCopyInfo'] as Map).cast<String, dynamic>())),
      desc: map['desc'] == null ? null : pulumi.Output.create<String>(map['desc'] as String),
      enterpriseSnapshotPolicyName: map['enterpriseSnapshotPolicyName'] == null ? null : pulumi.Output.create<String>(map['enterpriseSnapshotPolicyName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      retainRule: map['retainRule'] == null ? null : pulumi.Output.create<EnterpriseSnapshotPolicyRetainRule>(EnterpriseSnapshotPolicyRetainRule.fromMap((map['retainRule'] as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<EnterpriseSnapshotPolicySchedule>(EnterpriseSnapshotPolicySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      specialRetainRules: map['specialRetainRules'] == null ? null : pulumi.Output.create<EnterpriseSnapshotPolicySpecialRetainRules>(EnterpriseSnapshotPolicySpecialRetainRules.fromMap((map['specialRetainRules'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageRule: map['storageRule'] == null ? null : pulumi.Output.create<EnterpriseSnapshotPolicyStorageRule>(EnterpriseSnapshotPolicyStorageRule.fromMap((map['storageRule'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

