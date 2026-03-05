/// State of API deployment.
enum DeploymentState {
  active("active"),
  inactive("inactive");

  const DeploymentState(this.wireValue);
  final String wireValue;

  static DeploymentState fromValue(String value) {
    for (final item in DeploymentState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentState value: $value');
  }
}

