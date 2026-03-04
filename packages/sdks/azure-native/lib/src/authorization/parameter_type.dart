/// The data type of the parameter.
enum ParameterType {
  valueString("String"),
  valueArray("Array"),
  valueObject("Object"),
  valueBoolean("Boolean"),
  valueInteger("Integer"),
  valueFloat("Float"),
  valueDateTime("DateTime");

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
