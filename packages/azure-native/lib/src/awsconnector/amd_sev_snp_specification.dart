/// Property value
enum AmdSevSnpSpecification {
  disabled("disabled"),
  enabled("enabled");

  const AmdSevSnpSpecification(this.value);
  final String value;

  static AmdSevSnpSpecification fromValue(String value) {
    for (final item in AmdSevSnpSpecification.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmdSevSnpSpecification value: $value');
  }
}

