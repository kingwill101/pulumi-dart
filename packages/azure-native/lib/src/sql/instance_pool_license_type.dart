/// The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
enum InstancePoolLicenseType {
  valueLicenseIncluded("LicenseIncluded"),
  valueBasePrice("BasePrice");

  const InstancePoolLicenseType(this.value);
  final String value;

  static InstancePoolLicenseType fromValue(String value) {
    for (final item in InstancePoolLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstancePoolLicenseType value: $value');
  }
}

