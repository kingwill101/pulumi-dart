enum AlertsState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertsState(this.wireValue);
  final String wireValue;

  static AlertsState fromValue(String value) {
    for (final item in AlertsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertsState value: $value');
  }
}
