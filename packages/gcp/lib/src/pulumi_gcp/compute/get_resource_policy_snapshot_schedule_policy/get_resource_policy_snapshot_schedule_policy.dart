// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resource_policy_snapshot_schedule_policy_retention_policy/get_resource_policy_snapshot_schedule_policy_retention_policy.dart';
import '../get_resource_policy_snapshot_schedule_policy_schedule/get_resource_policy_snapshot_schedule_policy_schedule.dart';
import '../get_resource_policy_snapshot_schedule_policy_snapshot_property/get_resource_policy_snapshot_schedule_policy_snapshot_property.dart';

class GetResourcePolicySnapshotSchedulePolicy {
  /// Retention policy applied to snapshots created by this resource policy.
  final List<GetResourcePolicySnapshotSchedulePolicyRetentionPolicy>
      retentionPolicies;

  /// Contains one of an 'hourlySchedule', 'dailySchedule', or 'weeklySchedule'.
  final List<GetResourcePolicySnapshotSchedulePolicySchedule> schedules;

  /// Properties with which the snapshots are created, such as labels.
  final List<GetResourcePolicySnapshotSchedulePolicySnapshotProperty>
      snapshotProperties;

  GetResourcePolicySnapshotSchedulePolicy({
    required this.retentionPolicies,
    required this.schedules,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPolicies'] = Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicyRetentionPolicy,
        Map<String, dynamic>>(retentionPolicies, (value) => value.toMap());
    map['schedules'] = Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicySchedule,
        Map<String, dynamic>>(schedules, (value) => value.toMap());
    map['snapshotProperties'] = Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicySnapshotProperty,
        Map<String, dynamic>>(snapshotProperties, (value) => value.toMap());
    return map;
  }

  factory GetResourcePolicySnapshotSchedulePolicy.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicy(
      retentionPolicies: Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicyRetentionPolicy>(
          map['retentionPolicies'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      schedules:
          Input.decodeList<GetResourcePolicySnapshotSchedulePolicySchedule>(
              map['schedules'],
              (value) =>
                  GetResourcePolicySnapshotSchedulePolicySchedule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      snapshotProperties: Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicySnapshotProperty>(
          map['snapshotProperties'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicySnapshotProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
