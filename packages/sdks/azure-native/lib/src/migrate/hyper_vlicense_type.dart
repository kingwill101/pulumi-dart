/// HyperV licence type.
enum HyperVLicenseType {
  unknown("Unknown"),
  datacentre("Datacentre"),
  standard("Standard");

  const HyperVLicenseType(this.wireValue);
  final String wireValue;

  static HyperVLicenseType fromValue(String value) {
    for (final item in HyperVLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVLicenseType value: $value');
  }
}

