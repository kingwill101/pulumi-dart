enum CompositeTypeStatusDeploymentmanagerV2beta {
  unknownStatus("UNKNOWN_STATUS"),
  deprecated("DEPRECATED"),
  experimental("EXPERIMENTAL"),
  supported("SUPPORTED");

  const CompositeTypeStatusDeploymentmanagerV2beta(this.value);
  final String value;

  static CompositeTypeStatusDeploymentmanagerV2beta fromValue(String value) {
    for (final item in CompositeTypeStatusDeploymentmanagerV2beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CompositeTypeStatusDeploymentmanagerV2beta value: $value');
  }
}
