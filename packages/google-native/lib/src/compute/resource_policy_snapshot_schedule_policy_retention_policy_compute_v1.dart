// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete_compute_v1.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1 {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int? maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1?
      onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1({
    this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxRetentionDaysValue = maxRetentionDays;
    if (maxRetentionDaysValue != null) {
      map['maxRetentionDays'] = maxRetentionDaysValue;
    }
    final onSourceDiskDeleteValue = onSourceDiskDelete;
    if (onSourceDiskDeleteValue != null) {
      map['onSourceDiskDelete'] = onSourceDiskDeleteValue.value;
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeV1(
      maxRetentionDays: map['maxRetentionDays'] == null
          ? null
          : map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeV1
              .fromValue(map['onSourceDiskDelete'] as String),
    );
  }
}
