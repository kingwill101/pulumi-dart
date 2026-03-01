/// Object representing RunningState for Managed CCF.
enum RunningState {
  valueActive("Active"),
  valuePaused("Paused"),
  valueUnknown("Unknown"),
  valuePausing("Pausing"),
  valueResuming("Resuming");

  const RunningState(this.value);
  final String value;

  static RunningState fromValue(String value) {
    for (final item in RunningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RunningState value: $value');
  }
}

