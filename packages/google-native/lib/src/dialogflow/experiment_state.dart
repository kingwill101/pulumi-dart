/// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
enum ExperimentState {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  running("RUNNING"),
  done("DONE"),
  rolloutFailed("ROLLOUT_FAILED");

  const ExperimentState(this.value);
  final String value;

  static ExperimentState fromValue(String value) {
    for (final item in ExperimentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExperimentState value: $value');
  }
}
