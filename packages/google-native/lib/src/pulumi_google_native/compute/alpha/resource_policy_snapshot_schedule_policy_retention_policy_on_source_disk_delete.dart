/// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete {
  applyRetentionPolicy("APPLY_RETENTION_POLICY"),
  keepAutoSnapshots("KEEP_AUTO_SNAPSHOTS"),
  unspecifiedOnSourceDiskDelete("UNSPECIFIED_ON_SOURCE_DISK_DELETE");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete(
      this.value);
  final String value;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete
      fromValue(String value) {
    for (final item
        in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnSourceDiskDelete value: $value');
  }
}
