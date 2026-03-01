// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy.dart';
import 'resource_policy_snapshot_schedule_policy_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicy {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicy? retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicySchedule? schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotProperties?
  snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicy].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  ResourcePolicySnapshotSchedulePolicy({
    this.retentionPolicy,
    this.schedule,
    this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': ?retentionPolicy == null
          ? null
          : retentionPolicy!.toMap(),
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'snapshotProperties': ?snapshotProperties == null
          ? null
          : snapshotProperties!.toMap(),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicy(
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>(),
            ),
      schedule: map['schedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>(),
            ),
      snapshotProperties: map['snapshotProperties'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap(
              (map['snapshotProperties'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
