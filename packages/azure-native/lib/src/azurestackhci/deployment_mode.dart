/// Deployment mode to trigger job.
enum DeploymentMode {
  validate("Validate"),
  deploy("Deploy");

  const DeploymentMode(this.value);
  final String value;

  static DeploymentMode fromValue(String value) {
    for (final item in DeploymentMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentMode value: $value');
  }
}

