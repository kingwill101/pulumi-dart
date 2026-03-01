/// HyperV licence type.
enum HyperVLicenseType {
  unknown("Unknown"),
  datacentre("Datacentre"),
  standard("Standard");

  const HyperVLicenseType(this.value);
  final String value;

  static HyperVLicenseType fromValue(String value) {
    for (final item in HyperVLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVLicenseType value: $value');
  }
}

