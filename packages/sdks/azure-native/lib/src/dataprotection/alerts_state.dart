enum AlertsState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertsState(this.value);
  final String value;

  static AlertsState fromValue(String value) {
    for (final item in AlertsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertsState value: $value');
  }
}

