/// The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
enum ExecutionState {
  stateUnspecified("STATE_UNSPECIFIED"),
  new_("NEW"),
  running("RUNNING"),
  complete("COMPLETE"),
  failed("FAILED"),
  cached("CACHED"),
  cancelled("CANCELLED");

  const ExecutionState(this.value);
  final String value;

  static ExecutionState fromValue(String value) {
    for (final item in ExecutionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionState value: $value');
  }
}
