/// Global Parameter type.
enum GlobalParameterType {
  valueObject("Object"),
  valueString("String"),
  valueInt("Int"),
  valueFloat("Float"),
  valueBool("Bool"),
  valueArray("Array");

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

