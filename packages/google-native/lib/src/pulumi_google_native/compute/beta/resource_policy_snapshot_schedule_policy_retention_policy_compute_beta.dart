// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete_compute_beta.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int? maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta?
      onSourceDiskDelete;

  ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta({
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

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyComputeBeta(
      maxRetentionDays: map['maxRetentionDays'] == null
          ? null
          : map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDeleteComputeBeta
              .fromValue(map['onSourceDiskDelete'] as String),
    );
  }
}
