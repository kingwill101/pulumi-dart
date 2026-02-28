/// Indicates the type of the snapshot.
enum SnapshotSnapshotTypeComputeBeta {
  archive("ARCHIVE"),
  standard("STANDARD");

  const SnapshotSnapshotTypeComputeBeta(this.value);
  final String value;

  static SnapshotSnapshotTypeComputeBeta fromValue(String value) {
    for (final item in SnapshotSnapshotTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SnapshotSnapshotTypeComputeBeta value: $value');
  }
}
