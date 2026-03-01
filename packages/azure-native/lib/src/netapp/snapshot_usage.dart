/// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
enum SnapshotUsage {
  useExistingSnapshot("UseExistingSnapshot"),
  createNewSnapshot("CreateNewSnapshot");

  const SnapshotUsage(this.value);
  final String value;

  static SnapshotUsage fromValue(String value) {
    for (final item in SnapshotUsage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotUsage value: $value');
  }
}

