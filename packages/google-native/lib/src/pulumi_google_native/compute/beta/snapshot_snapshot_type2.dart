/// Indicates the type of the snapshot.
enum SnapshotSnapshotType2 {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotType2(this.value);
  final String value;

  static SnapshotSnapshotType2 fromValue(String value) {
    for (final item in SnapshotSnapshotType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotType2 value: $value');
  }
}
