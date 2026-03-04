/// Deployment scale type.
enum DeploymentScaleType {
  valueStandard("Standard"),
  valueManual("Manual");

  const DeploymentScaleType(this.wireValue);
  final String wireValue;

  static DeploymentScaleType fromValue(String value) {
    for (final item in DeploymentScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentScaleType value: $value');
  }
}
