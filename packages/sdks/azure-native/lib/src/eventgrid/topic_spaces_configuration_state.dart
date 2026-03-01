/// Indicate if Topic Spaces Configuration is enabled for the namespace. Default is Disabled.
enum TopicSpacesConfigurationState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const TopicSpacesConfigurationState(this.value);
  final String value;

  static TopicSpacesConfigurationState fromValue(String value) {
    for (final item in TopicSpacesConfigurationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TopicSpacesConfigurationState value: $value');
  }
}

