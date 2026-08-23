/// The type of variable that this is
enum CustomParameterType {
  bool_("Bool"),
  object_("Object"),
  string_("String");

  const CustomParameterType(this.wireValue);
  final String wireValue;

  static CustomParameterType fromValue(String value) {
    for (final item in CustomParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomParameterType value: $value');
  }
}
