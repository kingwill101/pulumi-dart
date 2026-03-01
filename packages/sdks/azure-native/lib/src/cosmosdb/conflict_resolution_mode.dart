/// Indicates the conflict resolution mode.
enum ConflictResolutionMode {
  valueLastWriterWins("LastWriterWins"),
  valueCustom("Custom");

  const ConflictResolutionMode(this.value);
  final String value;

  static ConflictResolutionMode fromValue(String value) {
    for (final item in ConflictResolutionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConflictResolutionMode value: $value');
  }
}

