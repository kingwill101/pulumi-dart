/// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
enum ComputeEnginePreferencesLicenseType {
  licenseTypeUnspecified("LICENSE_TYPE_UNSPECIFIED"),
  licenseTypeDefault("LICENSE_TYPE_DEFAULT"),
  licenseTypeBringYourOwnLicense("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE");

  const ComputeEnginePreferencesLicenseType(this.value);
  final String value;

  static ComputeEnginePreferencesLicenseType fromValue(String value) {
    for (final item in ComputeEnginePreferencesLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeEnginePreferencesLicenseType value: $value');
  }
}
