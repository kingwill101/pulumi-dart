/// The managed application deployment mode.
enum DeploymentMode {
  valueNotSpecified("NotSpecified"),
  valueIncremental("Incremental"),
  valueComplete("Complete");

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

