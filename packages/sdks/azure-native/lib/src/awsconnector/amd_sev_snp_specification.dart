/// Property value
enum AmdSevSnpSpecification {
  disabled("disabled"),
  enabled("enabled");

  const AmdSevSnpSpecification(this.wireValue);
  final String wireValue;

  static AmdSevSnpSpecification fromValue(String value) {
    for (final item in AmdSevSnpSpecification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmdSevSnpSpecification value: $value');
  }
}
