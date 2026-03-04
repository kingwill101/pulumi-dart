/// State of the log scrubbing config. Default value is Enabled.
enum ProfileScrubbingState {
  enabled("Enabled"),
  disabled("Disabled");

  const ProfileScrubbingState(this.wireValue);
  final String wireValue;

  static ProfileScrubbingState fromValue(String value) {
    for (final item in ProfileScrubbingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileScrubbingState value: $value');
  }
}
