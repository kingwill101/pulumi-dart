/// The license type to use in OS adaptation.
enum TargetVMDetailsLicenseType {
  default_("DEFAULT"),
  payg("PAYG"),
  byol("BYOL");

  const TargetVMDetailsLicenseType(this.value);
  final String value;

  static TargetVMDetailsLicenseType fromValue(String value) {
    for (final item in TargetVMDetailsLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetVMDetailsLicenseType value: $value');
  }
}

