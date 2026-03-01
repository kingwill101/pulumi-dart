/// Parameter type.
enum ParameterType {
  valueObject("Object"),
  valueString("String"),
  valueInt("Int"),
  valueFloat("Float"),
  valueBool("Bool"),
  valueArray("Array"),
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

