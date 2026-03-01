/// Property value
enum SnapshotState {
  completed("completed"),
  error("error"),
  pending("pending"),
  recoverable("recoverable"),
  recovering("recovering");

  const SnapshotState(this.value);
  final String value;

  static SnapshotState fromValue(String value) {
    for (final item in SnapshotState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SnapshotState value: $value');
  }
}

