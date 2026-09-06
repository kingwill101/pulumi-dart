import 'package:pulumi/pulumi.dart' as pulumi;

/// Manual backup using an already existing snapshot. This will always be CreateNewSnapshot for scheduled backups and UseExistingSnapshot/CreateNewSnapshot for manual backups
enum SnapshotUsage implements pulumi.PulumiEnum<String> {
  useExistingSnapshot("UseExistingSnapshot"),
  createNewSnapshot("CreateNewSnapshot");

  const SnapshotUsage(this.wireValue);
  @override
  final String wireValue;

  static SnapshotUsage fromValue(String value) {
    for (final item in SnapshotUsage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotUsage value: $value');
  }
}
