/// The deployment on error behavior type. Possible values are LastSuccessful and SpecificDeployment.
enum OnErrorDeploymentType {
  valueLastSuccessful("LastSuccessful"),
  valueSpecificDeployment("SpecificDeployment");

  const OnErrorDeploymentType(this.value);
  final String value;

  static OnErrorDeploymentType fromValue(String value) {
    for (final item in OnErrorDeploymentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnErrorDeploymentType value: $value');
  }
}

