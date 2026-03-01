/// Current state of the provisioning service.
enum State {
  valueActivating("Activating"),
  valueActive("Active"),
  valueDeleting("Deleting"),
  valueDeleted("Deleted"),
  valueActivationFailed("ActivationFailed"),
  valueDeletionFailed("DeletionFailed"),
  valueTransitioning("Transitioning"),
  valueSuspending("Suspending"),
  valueSuspended("Suspended"),
  valueResuming("Resuming"),
  valueFailingOver("FailingOver"),
  valueFailoverFailed("FailoverFailed");

  const State(this.value);
  final String value;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}

