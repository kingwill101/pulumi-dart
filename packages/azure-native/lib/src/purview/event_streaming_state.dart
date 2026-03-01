/// The state of the event streaming service
enum EventStreamingState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EventStreamingState(this.value);
  final String value;

  static EventStreamingState fromValue(String value) {
    for (final item in EventStreamingState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventStreamingState value: $value');
  }
}

