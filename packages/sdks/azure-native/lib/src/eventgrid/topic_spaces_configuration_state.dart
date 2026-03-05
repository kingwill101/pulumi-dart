/// Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
enum TopicSpacesConfigurationState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TopicSpacesConfigurationState(this.wireValue);
  final String wireValue;

  static TopicSpacesConfigurationState fromValue(String value) {
    for (final item in TopicSpacesConfigurationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TopicSpacesConfigurationState value: $value');
  }
}

