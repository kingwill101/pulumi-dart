/// The new task state.
enum MessageNewTaskState {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  assigned("ASSIGNED"),
  running("RUNNING"),
  failed("FAILED"),
  succeeded("SUCCEEDED"),
  unexecuted("UNEXECUTED");

  const MessageNewTaskState(this.value);
  final String value;

  static MessageNewTaskState fromValue(String value) {
    for (final item in MessageNewTaskState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageNewTaskState value: $value');
  }
}

