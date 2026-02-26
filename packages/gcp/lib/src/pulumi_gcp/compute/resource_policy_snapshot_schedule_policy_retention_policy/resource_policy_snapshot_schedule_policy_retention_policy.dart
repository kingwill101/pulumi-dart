// ignore_for_file: unused_element, unnecessary_cast

class ResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when
  /// the source disk is deleted.
  /// Default value is `KEEP_AUTO_SNAPSHOTS`.
  /// Possible values are: `KEEP_AUTO_SNAPSHOTS`, `APPLY_RETENTION_POLICY`.
  final String? onSourceDiskDelete;

  ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    required this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxRetentionDays'] = maxRetentionDays;
    final onSourceDiskDeleteValue = onSourceDiskDelete;
    if (onSourceDiskDeleteValue != null) {
      map['onSourceDiskDelete'] = onSourceDiskDeleteValue;
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] == null
          ? null
          : map['onSourceDiskDelete'] as String,
    );
  }
}
