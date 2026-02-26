// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete2.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicy2 {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int? maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2?
      onSourceDiskDelete;

  ResourcePolicySnapshotSchedulePolicyRetentionPolicy2({
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

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy2(
      maxRetentionDays: map['maxRetentionDays'] == null
          ? null
          : map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2
              .fromValue(map['onSourceDiskDelete'] as String),
    );
  }
}
