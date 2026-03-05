/// Describes the edition of the license. The values are either Standard or Datacenter.
enum LicenseEdition {
  valueStandard("Standard"),
  valueDatacenter("Datacenter");

  const LicenseEdition(this.wireValue);
  final String wireValue;

  static LicenseEdition fromValue(String value) {
    for (final item in LicenseEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseEdition value: $value');
  }
}

