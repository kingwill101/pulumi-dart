/// Indicates the type of the snapshot.
enum SnapshotSnapshotType3 {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotType3(this.value);
  final String value;

  static SnapshotSnapshotType3 fromValue(String value) {
    for (final item in SnapshotSnapshotType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotSnapshotType3 value: $value');
  }
}
