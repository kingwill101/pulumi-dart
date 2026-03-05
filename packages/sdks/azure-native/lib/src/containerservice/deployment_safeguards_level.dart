/// The deployment safeguards level. Possible values are Warn and Enforce
enum DeploymentSafeguardsLevel {
  warn("Warn"),
  enforce("Enforce");

  const DeploymentSafeguardsLevel(this.wireValue);
  final String wireValue;

  static DeploymentSafeguardsLevel fromValue(String value) {
    for (final item in DeploymentSafeguardsLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentSafeguardsLevel value: $value');
  }
}

