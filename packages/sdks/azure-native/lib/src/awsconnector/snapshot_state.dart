/// Property value
enum SnapshotState {
  completed("completed"),
  error("error"),
  pending("pending"),
  recoverable("recoverable"),
  recovering("recovering");

  const SnapshotState(this.wireValue);
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

