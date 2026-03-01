/// State of instance
enum ActiveState {
  active("active"),
  inactive("inactive");

  const ActiveState(this.value);
  final String value;

  static ActiveState fromValue(String value) {
    for (final item in ActiveState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveState value: $value');
  }
}

