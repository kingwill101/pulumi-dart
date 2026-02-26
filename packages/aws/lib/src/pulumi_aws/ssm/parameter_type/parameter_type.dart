enum ParameterType {
  valueString("String"),
  valueStringList("StringList"),
  valueSecureString("SecureString");

  const ParameterType(this.value);
  final String value;

  static ParameterType fromValue(String value) {
    for (final item in ParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParameterType value: $value');
  }
}
