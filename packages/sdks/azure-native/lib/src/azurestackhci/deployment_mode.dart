/// Deployment mode to trigger job.
enum DeploymentMode {
  validate("Validate"),
  deploy("Deploy");

  const DeploymentMode(this.wireValue);
  final String wireValue;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}

