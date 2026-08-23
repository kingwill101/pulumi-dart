/// Parameter type.
enum ParameterType {
  object_("Object"),
  string_("String"),
  int_("Int"),
  float("Float"),
  bool_("Bool"),
  array("Array"),
  secureString("SecureString");

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
