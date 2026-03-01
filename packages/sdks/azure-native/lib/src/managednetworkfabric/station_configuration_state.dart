/// Enabling a station. Either True/False.
enum StationConfigurationState {
  enabled("Enabled"),
  disabled("Disabled");

  const StationConfigurationState(this.value);
  final String value;

  static StationConfigurationState fromValue(String value) {
    for (final item in StationConfigurationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConfigurationState value: $value');
  }
}

