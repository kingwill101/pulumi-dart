/// License type for bringing your own license scenario.
enum IntegrationRuntimeLicenseType {
  basePrice("BasePrice"),
  licenseIncluded("LicenseIncluded");

  const IntegrationRuntimeLicenseType(this.wireValue);
  final String wireValue;

  static IntegrationRuntimeLicenseType fromValue(String value) {
    for (final item in IntegrationRuntimeLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationRuntimeLicenseType value: $value');
  }
}
