/// Executions stage states allow the same set of values as JobState.
enum ExecutionStageStateExecutionStageState {
  jobStateUnknown("JOB_STATE_UNKNOWN"),
  jobStateStopped("JOB_STATE_STOPPED"),
  jobStateRunning("JOB_STATE_RUNNING"),
  jobStateDone("JOB_STATE_DONE"),
  jobStateFailed("JOB_STATE_FAILED"),
  jobStateCancelled("JOB_STATE_CANCELLED"),
  jobStateUpdated("JOB_STATE_UPDATED"),
  jobStateDraining("JOB_STATE_DRAINING"),
  jobStateDrained("JOB_STATE_DRAINED"),
  jobStatePending("JOB_STATE_PENDING"),
  jobStateCancelling("JOB_STATE_CANCELLING"),
  jobStateQueued("JOB_STATE_QUEUED"),
  jobStateResourceCleaningUp("JOB_STATE_RESOURCE_CLEANING_UP");

  const ExecutionStageStateExecutionStageState(this.value);
  final String value;

  static ExecutionStageStateExecutionStageState fromValue(String value) {
    for (final item in ExecutionStageStateExecutionStageState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExecutionStageStateExecutionStageState value: $value');
  }
}
