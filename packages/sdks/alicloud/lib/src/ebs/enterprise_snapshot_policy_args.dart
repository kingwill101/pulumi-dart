// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_cross_region_copy_info.dart';
import 'enterprise_snapshot_policy_retain_rule.dart';
import 'enterprise_snapshot_policy_schedule.dart';
import 'enterprise_snapshot_policy_special_retain_rules.dart';
import 'enterprise_snapshot_policy_storage_rule.dart';

/// {@template pulumi_ebs_enterprise_snapshot_policy_enterprise_snapshot_policy_args_doc}
/// The set of arguments for EnterpriseSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_ebs_enterprise_snapshot_policy_enterprise_snapshot_policy_args_doc}
class EnterpriseSnapshotPolicyArgs {
  /// Snapshot replication information. See `cross_region_copy_info` below.
  final pulumi.Input<EnterpriseSnapshotPolicyCrossRegionCopyInfo>?
  crossRegionCopyInfo;

  /// Description information representing the resource.
  final pulumi.Input<String>? desc;

  /// The name of the resource.
  final pulumi.Input<String> enterpriseSnapshotPolicyName;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// Snapshot retention policy representing resources. See `retain_rule` below.
  final pulumi.Input<EnterpriseSnapshotPolicyRetainRule> retainRule;

  /// The scheduling plan that represents the resource. See `schedule` below.
  final pulumi.Input<EnterpriseSnapshotPolicySchedule> schedule;

  /// Snapshot special retention rules. See `special_retain_rules` below.
  final pulumi.Input<EnterpriseSnapshotPolicySpecialRetainRules>?
  specialRetainRules;

  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Snapshot storage policy. See `storage_rule` below.
  final pulumi.Input<EnterpriseSnapshotPolicyStorageRule>? storageRule;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Represents the target type of resource binding.
  final pulumi.Input<String> targetType;

  /// Creates a new [EnterpriseSnapshotPolicyArgs].
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
  EnterpriseSnapshotPolicyArgs({
    this.crossRegionCopyInfo,
    this.desc,
    required this.enterpriseSnapshotPolicyName,
    this.resourceGroupId,
    required this.retainRule,
    required this.schedule,
    this.specialRetainRules,
    this.status,
    this.storageRule,
    this.tags,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionCopyInfo':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseSnapshotPolicyCrossRegionCopyInfo,
            Map<String, dynamic>
          >(crossRegionCopyInfo, (value) => value.toMap()),
      'desc': ?desc,
      'enterpriseSnapshotPolicyName': enterpriseSnapshotPolicyName,
      'resourceGroupId': ?resourceGroupId,
      'retainRule':
          pulumi.Input.mapInputValue<
            EnterpriseSnapshotPolicyRetainRule,
            Map<String, dynamic>
          >(retainRule, (value) => value.toMap()),
      'schedule':
          pulumi.Input.mapInputValue<
            EnterpriseSnapshotPolicySchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'specialRetainRules':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseSnapshotPolicySpecialRetainRules,
            Map<String, dynamic>
          >(specialRetainRules, (value) => value.toMap()),
      'status': ?status,
      'storageRule':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseSnapshotPolicyStorageRule,
            Map<String, dynamic>
          >(storageRule, (value) => value.toMap()),
      'tags': ?tags,
      'targetType': targetType,
    };
  }

  factory EnterpriseSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicyArgs(
      crossRegionCopyInfo: (() {
        final guardedValue = map['crossRegionCopyInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseSnapshotPolicyCrossRegionCopyInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      desc: (() {
        final guardedValue = map['desc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enterpriseSnapshotPolicyName: pulumi.Input.fromValue(
        map['enterpriseSnapshotPolicyName'] as String,
      ),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retainRule: pulumi.Input.fromValue(
        EnterpriseSnapshotPolicyRetainRule.fromMap(
          (map['retainRule']! as Map).cast<String, dynamic>(),
        ),
      ),
      schedule: pulumi.Input.fromValue(
        EnterpriseSnapshotPolicySchedule.fromMap(
          (map['schedule']! as Map).cast<String, dynamic>(),
        ),
      ),
      specialRetainRules: (() {
        final guardedValue = map['specialRetainRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseSnapshotPolicySpecialRetainRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageRule: (() {
        final guardedValue = map['storageRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseSnapshotPolicyStorageRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}
