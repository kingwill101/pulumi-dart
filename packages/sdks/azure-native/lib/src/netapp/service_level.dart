/// The service level of the file system
enum ServiceLevel {
  valueStandard("Standard"),
  valuePremium("Premium"),
  valueUltra("Ultra"),
  valueStandardZRS("StandardZRS");

  const ServiceLevel(this.wireValue);
  final String wireValue;

  static ServiceLevel fromValue(String value) {
    for (final item in ServiceLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceLevel value: $value');
  }
}
