/// The state of this Execution. This is a property of the Execution, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines) and the system does not prescribe or check the validity of state transitions.
enum ExecutionState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  new_("NEW"),
  running("RUNNING"),
  complete("COMPLETE"),
  failed("FAILED"),
  cached("CACHED"),
  cancelled("CANCELLED");

  const ExecutionState2(this.value);
  final String value;

  static ExecutionState2 fromValue(String value) {
    for (final item in ExecutionState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionState2 value: $value');
  }
}
