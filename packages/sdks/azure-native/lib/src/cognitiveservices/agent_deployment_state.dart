/// Gets or sets the current operational state of the deployment (and, intrinsically, of the comprising agents).
enum AgentDeploymentState {
  valueStarting("Starting"),
  valueRunning("Running"),
  valueStopping("Stopping"),
  valueStopped("Stopped"),
  valueFailed("Failed"),
  valueDeleting("Deleting"),
  valueDeleted("Deleted"),
  valueUpdating("Updating");

  const AgentDeploymentState(this.wireValue);
  final String wireValue;

  static AgentDeploymentState fromValue(String value) {
    for (final item in AgentDeploymentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentDeploymentState value: $value');
  }
}

