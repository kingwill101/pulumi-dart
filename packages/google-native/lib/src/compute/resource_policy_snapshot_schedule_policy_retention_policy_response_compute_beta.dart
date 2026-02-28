// ignore_for_file: unused_element, unnecessary_cast

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final String onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta({
    required this.maxRetentionDays,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRetentionDays'] = maxRetentionDays;
    map['onSourceDiskDelete'] = onSourceDiskDelete;
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] as String,
    );
  }
}
