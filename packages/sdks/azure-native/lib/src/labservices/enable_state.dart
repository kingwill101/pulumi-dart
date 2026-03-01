/// Whether a VM will get shutdown when it hasn't been connected to after a period of time.
enum EnableState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableState(this.value);
  final String value;

  static EnableState fromValue(String value) {
    for (final item in EnableState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableState value: $value');
  }
}

