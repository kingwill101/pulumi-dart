/// The deployment type
enum EdgeActionVersionDeploymentType {
  zip("zip"),
  file("file"),
  others("others");

  const EdgeActionVersionDeploymentType(this.value);
  final String value;

  static EdgeActionVersionDeploymentType fromValue(String value) {
    for (final item in EdgeActionVersionDeploymentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeActionVersionDeploymentType value: $value');
  }
}

