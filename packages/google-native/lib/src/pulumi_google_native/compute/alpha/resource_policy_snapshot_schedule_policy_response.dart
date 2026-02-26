// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_response.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponse {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse
      retentionPolicy;

  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleResponse schedule;

  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse
      snapshotProperties;

  ResourcePolicySnapshotSchedulePolicyResponse({
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

  factory ResourcePolicySnapshotSchedulePolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponse(
      retentionPolicy:
          ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: ResourcePolicySnapshotSchedulePolicyScheduleResponse.fromMap(
          (map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties:
          ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponse
              .fromMap(
                  (map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}
