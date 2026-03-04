/// The deployment type
enum EdgeActionVersionDeploymentType {
  zip("zip"),
  file("file"),
  others("others");

  const EdgeActionVersionDeploymentType(this.wireValue);
  final String wireValue;

  static EdgeActionVersionDeploymentType fromValue(String value) {
    for (final item in EdgeActionVersionDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EdgeActionVersionDeploymentType value: $value',
    );
  }
}
