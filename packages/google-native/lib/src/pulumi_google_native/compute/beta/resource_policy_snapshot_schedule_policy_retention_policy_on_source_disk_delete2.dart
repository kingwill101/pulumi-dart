/// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2 {
  applyRetentionPolicy("APPLY_RETENTION_POLICY"),
  keepAutoSnapshots("KEEP_AUTO_SNAPSHOTS"),
  unspecifiedOnSourceDiskDelete("UNSPECIFIED_ON_SOURCE_DISK_DELETE");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2(
      this.value);
  final String value;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2
      fromValue(String value) {
    for (final item
        in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete2 value: $value');
  }
}
