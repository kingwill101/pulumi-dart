/// Controls the visibility of the volume's read-only snapshot directory, which provides access to each of the volume's snapshots.
enum SnapshotDirectoryVisibility {
  hidden("Hidden"),
  visible("Visible");

  const SnapshotDirectoryVisibility(this.wireValue);
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
