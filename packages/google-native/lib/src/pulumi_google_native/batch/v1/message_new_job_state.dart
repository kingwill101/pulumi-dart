/// The new job state.
enum MessageNewJobState {
  stateUnspecified("STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scheduled("SCHEDULED"),
  running("RUNNING"),
  succeeded("SUCCEEDED"),
  failed("FAILED"),
  deletionInProgress("DELETION_IN_PROGRESS");

  const MessageNewJobState(this.value);
  final String value;

  static MessageNewJobState fromValue(String value) {
    for (final item in MessageNewJobState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageNewJobState value: $value');
  }
}
