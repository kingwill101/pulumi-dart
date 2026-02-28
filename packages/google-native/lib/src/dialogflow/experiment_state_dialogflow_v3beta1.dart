/// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
enum ExperimentStateDialogflowV3beta1 {
  stateUnspecified("STATE_UNSPECIFIED"),
  draft("DRAFT"),
  running("RUNNING"),
  done("DONE"),
  rolloutFailed("ROLLOUT_FAILED");

  const ExperimentStateDialogflowV3beta1(this.value);
  final String value;

  static ExperimentStateDialogflowV3beta1 fromValue(String value) {
    for (final item in ExperimentStateDialogflowV3beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ExperimentStateDialogflowV3beta1 value: $value');
  }
}
