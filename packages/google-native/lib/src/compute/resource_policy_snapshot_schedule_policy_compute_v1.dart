// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_compute_v1.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyComputeV1 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1?
  retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleComputeV1? schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeV1?
  snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyComputeV1].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  ResourcePolicySnapshotSchedulePolicyComputeV1({
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

  factory ResourcePolicySnapshotSchedulePolicyComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicyComputeV1(
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>(),
            ),
      schedule: map['schedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyScheduleComputeV1.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>(),
            ),
      snapshotProperties: map['snapshotProperties'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeV1.fromMap(
              (map['snapshotProperties'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
