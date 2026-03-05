/// The type of a snapshot. The default is NodePool.
enum SnapshotType {
  valueNodePool("NodePool");

  const SnapshotType(this.wireValue);
  final String wireValue;

  static SnapshotType fromValue(String value) {
    for (final item in SnapshotType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotType value: $value');
  }
}

