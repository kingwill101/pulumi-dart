/// State of the log scrubbing config. Default value is Enabled.
enum ProfileScrubbingState {
  enabled("Enabled"),
  disabled("Disabled");

  const ProfileScrubbingState(this.value);
  final String value;

  static ProfileScrubbingState fromValue(String value) {
    for (final item in ProfileScrubbingState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProfileScrubbingState value: $value');
  }
}

