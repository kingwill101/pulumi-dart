// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy2.dart';
import 'resource_policy_snapshot_schedule_policy_schedule2.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties2.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicy2 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicy2? retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicySchedule2? schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotProperties2?
      snapshotProperties;

  ResourcePolicySnapshotSchedulePolicy2({
    this.retentionPolicy,
    this.schedule,
    this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = retentionPolicyValue.toMap();
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = scheduleValue.toMap();
    }
    final snapshotPropertiesValue = snapshotProperties;
    if (snapshotPropertiesValue != null) {
      map['snapshotProperties'] = snapshotPropertiesValue.toMap();
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicy2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicy2(
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicy2.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySchedule2.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties: map['snapshotProperties'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySnapshotProperties2.fromMap(
              (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
