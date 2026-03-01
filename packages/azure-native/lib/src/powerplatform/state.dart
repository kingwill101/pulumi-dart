/// lockbox configuration
enum State {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueNotConfigured("NotConfigured");

  const State(this.value);
  final String value;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}

