/// The type.
enum ParameterType {
  valueNotSpecified("NotSpecified"),
  valueString("String"),
  valueSecureString("SecureString"),
  valueInt("Int"),
  valueFloat("Float"),
  valueBool("Bool"),
  valueArray("Array"),
  valueObject("Object"),
  valueSecureObject("SecureObject");

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

