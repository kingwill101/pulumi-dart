/// State of instance
enum ActiveState {
  active("active"),
  inactive("inactive");

  const ActiveState(this.wireValue);
  final String wireValue;

  static ActiveState fromValue(String value) {
    for (final item in ActiveState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActiveState value: $value');
  }
}
