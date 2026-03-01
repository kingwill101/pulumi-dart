/// Describes the edition of the license. The values are either Standard or Datacenter.
enum LicenseEdition {
  valueStandard("Standard"),
  valueDatacenter("Datacenter");

  const LicenseEdition(this.value);
  final String value;

  static LicenseEdition fromValue(String value) {
    for (final item in LicenseEdition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseEdition value: $value');
  }
}

