/// Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
enum BackendEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BackendEnabledState(this.wireValue);
  final String wireValue;

  static BackendEnabledState fromValue(String value) {
    for (final item in BackendEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendEnabledState value: $value');
  }
}

