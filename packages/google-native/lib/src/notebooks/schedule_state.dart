enum ScheduleState {
  stateUnspecified("STATE_UNSPECIFIED"),
  enabled("ENABLED"),
  paused("PAUSED"),
  disabled("DISABLED"),
  updateFailed("UPDATE_FAILED"),
  initializing("INITIALIZING"),
  deleting("DELETING");

  const ScheduleState(this.value);
  final String value;

  static ScheduleState fromValue(String value) {
    for (final item in ScheduleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleState value: $value');
  }
}

