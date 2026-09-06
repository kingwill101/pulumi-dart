import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of a snapshot. The default is NodePool.
enum SnapshotType implements pulumi.PulumiEnum<String> {
  valueNodePool("NodePool");

  const SnapshotType(this.wireValue);
  @override
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
