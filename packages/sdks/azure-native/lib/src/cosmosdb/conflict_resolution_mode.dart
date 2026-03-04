/// Indicates the conflict resolution mode.
enum ConflictResolutionMode {
  valueLastWriterWins("LastWriterWins"),
  valueCustom("Custom");

  const ConflictResolutionMode(this.wireValue);
  final String wireValue;

  static ConflictResolutionMode fromValue(String value) {
    for (final item in ConflictResolutionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConflictResolutionMode value: $value');
  }
}
