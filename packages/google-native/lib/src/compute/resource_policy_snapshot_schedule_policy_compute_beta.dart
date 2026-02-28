// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_compute_beta.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyComputeBeta {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta?
      retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta? schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeBeta?
      snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyComputeBeta].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  ResourcePolicySnapshotSchedulePolicyComputeBeta({
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

  factory ResourcePolicySnapshotSchedulePolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyComputeBeta(
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta
              .fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties: map['snapshotProperties'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicySnapshotPropertiesComputeBeta
              .fromMap(
                  (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
