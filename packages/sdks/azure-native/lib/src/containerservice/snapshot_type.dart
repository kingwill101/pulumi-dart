/// The type of a snapshot. The default is NodePool.
enum SnapshotType {
  valueNodePool("NodePool");

  const SnapshotType(this.value);
  final String value;

  static SnapshotType fromValue(String value) {
    for (final item in SnapshotType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotType value: $value');
  }
}

