/// State of soft delete
enum SoftDeleteState {
  valueOff("Off"),
  valueOn("On"),
  valueAlwaysOn("AlwaysOn");

  const SoftDeleteState(this.wireValue);
  final String wireValue;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}

