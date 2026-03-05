/// Enabling a station. Either True/False.
enum StationConfigurationState {
  enabled("Enabled"),
  disabled("Disabled");

  const StationConfigurationState(this.wireValue);
  final String wireValue;

  static StationConfigurationState fromValue(String value) {
    for (final item in StationConfigurationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StationConfigurationState value: $value');
  }
}

