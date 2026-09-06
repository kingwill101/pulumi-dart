import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
enum SnapshotDirectoryVisibility implements pulumi.PulumiEnum<String> {
  hidden("Hidden"),
  visible("Visible");

  const SnapshotDirectoryVisibility(this.wireValue);
  @override
  final String wireValue;

  static SnapshotDirectoryVisibility fromValue(String value) {
    for (final item in SnapshotDirectoryVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotDirectoryVisibility value: $value');
  }
}
