// ignore_for_file: unused_element, unnecessary_cast

class GetResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final int maxRetentionDays;

  /// Specifies the behavior to apply to scheduled snapshots when
  /// the source disk is deleted. Default value: "KEEP_AUTO_SNAPSHOTS" Possible values: ["KEEP_AUTO_SNAPSHOTS", "APPLY_RETENTION_POLICY"]
  final String onSourceDiskDelete;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicyRetentionPolicy].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when
  GetResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    required this.maxRetentionDays,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onSourceDiskDelete': onSourceDiskDelete,
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: map['maxRetentionDays'] as int,
      onSourceDiskDelete: map['onSourceDiskDelete'] as String,
    );
  }
}
