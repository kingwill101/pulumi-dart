/// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
enum SessionAffinityEnabledState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SessionAffinityEnabledState(this.wireValue);
  final String wireValue;

  static SessionAffinityEnabledState fromValue(String value) {
    for (final item in SessionAffinityEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionAffinityEnabledState value: $value');
  }
}
