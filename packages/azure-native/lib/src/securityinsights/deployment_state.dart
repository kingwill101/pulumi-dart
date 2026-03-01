/// Current status of the deployment.
enum DeploymentState {
  valueInProgress("In_Progress"),
  valueCompleted("Completed"),
  valueQueued("Queued"),
  valueCanceling("Canceling");

  const DeploymentState(this.value);
  final String value;

  static DeploymentState fromValue(String value) {
    for (final item in DeploymentState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentState value: $value');
  }
}

