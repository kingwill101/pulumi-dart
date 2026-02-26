// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_response3.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response3.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response3.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponse3 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse3
      retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleResponse3 schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3
      snapshotProperties;

  ResourcePolicySnapshotSchedulePolicyResponse3({
    required this.retentionPolicy,
    required this.schedule,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPolicy'] = retentionPolicy.toMap();
    map['schedule'] = schedule.toMap();
    map['snapshotProperties'] = snapshotProperties.toMap();
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyResponse3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponse3(
      retentionPolicy:
          ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse3.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: ResourcePolicySnapshotSchedulePolicyScheduleResponse3.fromMap(
          (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties:
          ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse3
              .fromMap(
                  (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
