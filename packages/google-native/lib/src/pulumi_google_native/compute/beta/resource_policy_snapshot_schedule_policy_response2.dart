// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_response2.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response2.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response2.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponse2 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2
      retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleResponse2 schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse2
      snapshotProperties;

  ResourcePolicySnapshotSchedulePolicyResponse2({
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

  factory ResourcePolicySnapshotSchedulePolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponse2(
      retentionPolicy:
          ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: ResourcePolicySnapshotSchedulePolicyScheduleResponse2.fromMap(
          (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties:
          ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse2
              .fromMap(
                  (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
