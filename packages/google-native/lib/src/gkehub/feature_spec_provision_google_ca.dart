/// Immutable. Specifies CA configuration.
enum FeatureSpecProvisionGoogleCa {
  googleCaProvisioningUnspecified("GOOGLE_CA_PROVISIONING_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED"),
  enabledWithManagedCa("ENABLED_WITH_MANAGED_CA"),
  enabledWithDefaultCa("ENABLED_WITH_DEFAULT_CA");

  const FeatureSpecProvisionGoogleCa(this.value);
  final String value;

  static FeatureSpecProvisionGoogleCa fromValue(String value) {
    for (final item in FeatureSpecProvisionGoogleCa.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureSpecProvisionGoogleCa value: $value');
  }
}
