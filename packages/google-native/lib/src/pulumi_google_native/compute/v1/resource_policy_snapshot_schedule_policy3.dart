// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy3.dart';
import 'resource_policy_snapshot_schedule_policy_schedule3.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties3.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicy3 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicy3? retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicySchedule3? schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotProperties3?
      snapshotProperties;

  ResourcePolicySnapshotSchedulePolicy3({
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

  factory ResourcePolicySnapshotSchedulePolicy3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicy3(
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicy3.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySchedule3.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties: map['snapshotProperties'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySnapshotProperties3.fromMap(
              (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
