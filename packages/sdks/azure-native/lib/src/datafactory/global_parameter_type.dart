/// Global Parameter type.
enum GlobalParameterType {
  object_("Object"),
  string_("String"),
  int_("Int"),
  float("Float"),
  bool_("Bool"),
  array("Array");

  const GlobalParameterType(this.wireValue);
  final String wireValue;

  static GlobalParameterType fromValue(String value) {
    for (final item in GlobalParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalParameterType value: $value');
  }
}
