/// License type for bringing your own license scenario.
enum IntegrationRuntimeLicenseType {
  valueBasePrice("BasePrice"),
  valueLicenseIncluded("LicenseIncluded");

  const IntegrationRuntimeLicenseType(this.value);
  final String value;

  static IntegrationRuntimeLicenseType fromValue(String value) {
    for (final item in IntegrationRuntimeLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeLicenseType value: $value');
  }
}

