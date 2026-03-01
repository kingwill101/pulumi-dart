/// State of soft delete
enum SoftDeleteState {
  valueOff("Off"),
  valueOn("On"),
  valueAlwaysOn("AlwaysOn");

  const SoftDeleteState(this.value);
  final String value;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}

