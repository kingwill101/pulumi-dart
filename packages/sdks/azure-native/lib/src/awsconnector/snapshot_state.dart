import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum SnapshotState implements pulumi.PulumiEnum<String> {
  completed("completed"),
  error("error"),
  pending("pending"),
  recoverable("recoverable"),
  recovering("recovering");

  const SnapshotState(this.wireValue);
  @override
  final String wireValue;

  static SnapshotState fromValue(String value) {
    for (final item in SnapshotState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotState value: $value');
  }
}
