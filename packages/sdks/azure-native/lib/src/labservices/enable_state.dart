/// Whether a VM will get shutdown when it hasn't been connected to after a period of time.
enum EnableState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const EnableState(this.wireValue);
  final String wireValue;

  static EnableState fromValue(String value) {
    for (final item in EnableState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnableState value: $value');
  }
}
