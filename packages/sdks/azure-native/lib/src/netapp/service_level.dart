/// The service level of the file system
enum ServiceLevel {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueUltra("Ultra"),
  valueStandardZRS("StandardZRS");

  const ServiceLevel(this.value);
  final String value;

  static ServiceLevel fromValue(String value) {
    for (final item in ServiceLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceLevel value: $value');
  }
}

