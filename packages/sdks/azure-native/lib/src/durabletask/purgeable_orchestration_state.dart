/// The orchestration state to which this policy applies. If omitted, the policy applies to all purgeable orchestration states.
enum PurgeableOrchestrationState {
  completed("Completed"),
  failed("Failed"),
  terminated("Terminated"),
  canceled("Canceled");

  const PurgeableOrchestrationState(this.wireValue);
  final String wireValue;

  static PurgeableOrchestrationState fromValue(String value) {
    for (final item in PurgeableOrchestrationState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PurgeableOrchestrationState value: $value');
  }
}

