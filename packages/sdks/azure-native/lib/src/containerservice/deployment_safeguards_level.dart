/// The deployment safeguards level. Possible values are Warn and Enforce
enum DeploymentSafeguardsLevel {
  warn("Warn"),
  enforce("Enforce");

  const DeploymentSafeguardsLevel(this.value);
  final String value;

  static DeploymentSafeguardsLevel fromValue(String value) {
    for (final item in DeploymentSafeguardsLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentSafeguardsLevel value: $value');
  }
}

