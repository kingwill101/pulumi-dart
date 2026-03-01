/// State of API deployment.
enum DeploymentState {
  active("active"),
  inactive("inactive");

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

