/// Whether to enable use of this backend. Permitted values are 'Enabled' or 'Disabled'
enum BackendEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BackendEnabledState(this.value);
  final String value;

  static BackendEnabledState fromValue(String value) {
    for (final item in BackendEnabledState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendEnabledState value: $value');
  }
}

