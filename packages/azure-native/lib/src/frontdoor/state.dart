/// The state of the Experiment
enum State {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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

