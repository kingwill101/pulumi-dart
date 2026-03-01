/// Defines the environment type - Production/Non Production.
enum SAPEnvironmentType {
  nonProd("NonProd"),
  prod("Prod");

  const SAPEnvironmentType(this.value);
  final String value;

  static SAPEnvironmentType fromValue(String value) {
    for (final item in SAPEnvironmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPEnvironmentType value: $value');
  }
}

