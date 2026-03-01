/// Deployment scale type.
enum DeploymentScaleType {
  valueStandard("Standard"),
  valueManual("Manual");

  const DeploymentScaleType(this.value);
  final String value;

  static DeploymentScaleType fromValue(String value) {
    for (final item in DeploymentScaleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentScaleType value: $value');
  }
}

