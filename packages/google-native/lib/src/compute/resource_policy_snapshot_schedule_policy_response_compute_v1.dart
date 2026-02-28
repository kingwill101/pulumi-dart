// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_response_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_response_compute_v1.dart';
import 'resource_policy_snapshot_schedule_policy_snapshot_properties_response_compute_v1.dart';

/// A snapshot schedule policy specifies when and how frequently snapshots are to be created for the target disk. Also specifies how many and how long these scheduled snapshots should be retained.
class ResourcePolicySnapshotSchedulePolicyResponseComputeV1 {
  /// Retention policy applied to snapshots created by this resource policy.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeV1 retentionPolicy;
  /// A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  final ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1 schedule;
  /// Properties with which snapshots are created such as labels, encryption keys.
  final ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1 snapshotProperties;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyResponseComputeV1].
  /// [retentionPolicy] Retention policy applied to snapshots created by this resource policy.
  /// [schedule] A Vm Maintenance Policy specifies what kind of infrastructure maintenance we are allowed to perform on this VM and when. Schedule that is applied to disks covered by this policy.
  /// [snapshotProperties] Properties with which snapshots are created such as labels, encryption keys.
  ResourcePolicySnapshotSchedulePolicyResponseComputeV1({
    required this.retentionPolicy,
    required this.schedule,
    required this.snapshotProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPolicy': retentionPolicy.toMap(),
      'schedule': schedule.toMap(),
      'snapshotProperties': snapshotProperties.toMap(),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyResponseComputeV1(
      retentionPolicy: ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeV1.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      schedule: ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      snapshotProperties: ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1.fromMap((map['snapshotProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

