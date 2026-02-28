// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_retention_policy_on_policy_switch.dart';
import 'resource_policy_snapshot_schedule_policy_retention_policy_on_source_disk_delete.dart';

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int? maxRetentionDays;
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch?
      onPolicySwitch;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete?
      onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicy].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onPolicySwitch] Optional.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    this.maxRetentionDays,
    this.onPolicySwitch,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxRetentionDaysValue = maxRetentionDays;
    if (maxRetentionDaysValue != null) {
      map['maxRetentionDays'] = maxRetentionDaysValue;
    }
    final onPolicySwitchValue = onPolicySwitch;
    if (onPolicySwitchValue != null) {
      map['onPolicySwitch'] = onPolicySwitchValue.value;
    }
    final onSourceDiskDeleteValue = onSourceDiskDelete;
    if (onSourceDiskDeleteValue != null) {
      map['onSourceDiskDelete'] = onSourceDiskDeleteValue.value;
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: map['maxRetentionDays'] == null
          ? null
          : map['maxRetentionDays'] as int,
      onPolicySwitch: map['onPolicySwitch'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch
              .fromValue(map['onPolicySwitch'] as String),
      onSourceDiskDelete: map['onSourceDiskDelete'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete
              .fromValue(map['onSourceDiskDelete'] as String),
    );
  }
}
