// ignore_for_file: unused_element, unnecessary_cast

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2 {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final String onSourceDiskDelete;

  ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2({
    required this.maxRetentionDays,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRetentionDays'] = maxRetentionDays;
    map['onSourceDiskDelete'] = onSourceDiskDelete;
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse2(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] as String,
    );
  }
}
