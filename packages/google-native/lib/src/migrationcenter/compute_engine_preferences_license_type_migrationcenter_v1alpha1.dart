/// License type to consider when calculating costs for virtual machine insights and recommendations. If unspecified, costs are calculated based on the default licensing plan.
enum ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1 {
  licenseTypeUnspecified("LICENSE_TYPE_UNSPECIFIED"),
  licenseTypeDefault("LICENSE_TYPE_DEFAULT"),
  licenseTypeBringYourOwnLicense("LICENSE_TYPE_BRING_YOUR_OWN_LICENSE");

  const ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1(this.value);
  final String value;

  static ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1 fromValue(
    String value,
  ) {
    for (final item
        in ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ComputeEnginePreferencesLicenseTypeMigrationcenterV1alpha1 value: $value',
    );
  }
}
