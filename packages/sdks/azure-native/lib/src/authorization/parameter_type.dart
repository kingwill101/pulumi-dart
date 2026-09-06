import 'package:pulumi/pulumi.dart' as pulumi;

/// The data type of the parameter.
enum ParameterType implements pulumi.PulumiEnum<String> {
  valueString("String"),
  valueArray("Array"),
  valueObject("Object"),
  valueBoolean("Boolean"),
  valueInteger("Integer"),
  valueFloat("Float"),
  valueDateTime("DateTime");

  const ParameterType(this.wireValue);
  @override
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
