/// The license type to use in OS adaptation.
enum ComputeEngineTargetDefaultsLicenseType2 {
  computeEngineLicenseTypeDefault("COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT"),
  computeEngineLicenseTypePayg("COMPUTE_ENGINE_LICENSE_TYPE_PAYG"),
  computeEngineLicenseTypeByol("COMPUTE_ENGINE_LICENSE_TYPE_BYOL");

  const ComputeEngineTargetDefaultsLicenseType2(this.value);
  final String value;

  static ComputeEngineTargetDefaultsLicenseType2 fromValue(String value) {
    for (final item in ComputeEngineTargetDefaultsLicenseType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeEngineTargetDefaultsLicenseType2 value: $value');
  }
}
