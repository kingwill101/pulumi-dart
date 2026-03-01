/// Indicates the type of the snapshot.
enum RegionSnapshotSnapshotType {
  archive("ARCHIVE"),
  standard("STANDARD");

  const RegionSnapshotSnapshotType(this.value);
  final String value;

  static RegionSnapshotSnapshotType fromValue(String value) {
    for (final item in RegionSnapshotSnapshotType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSnapshotSnapshotType value: $value');
  }
}
