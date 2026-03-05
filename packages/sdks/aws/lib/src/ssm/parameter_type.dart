enum ParameterType {
  valueString("String"),
  valueStringList("StringList"),
  valueSecureString("SecureString");

  const ParameterType(this.wireValue);
  final String wireValue;

  static ParameterType fromValue(String value) {
    for (final item in ParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParameterType value: $value');
  }
}

