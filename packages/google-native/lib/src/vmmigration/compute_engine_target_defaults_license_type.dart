/// The license type to use in OS adaptation.
enum ComputeEngineTargetDefaultsLicenseType {
  computeEngineLicenseTypeDefault("COMPUTE_ENGINE_LICENSE_TYPE_DEFAULT"),
  computeEngineLicenseTypePayg("COMPUTE_ENGINE_LICENSE_TYPE_PAYG"),
  computeEngineLicenseTypeByol("COMPUTE_ENGINE_LICENSE_TYPE_BYOL");

  const ComputeEngineTargetDefaultsLicenseType(this.value);
  final String value;

  static ComputeEngineTargetDefaultsLicenseType fromValue(String value) {
    for (final item in ComputeEngineTargetDefaultsLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ComputeEngineTargetDefaultsLicenseType value: $value',
    );
  }
}
