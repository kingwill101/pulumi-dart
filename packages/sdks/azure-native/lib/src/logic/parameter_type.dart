import 'package:pulumi/pulumi.dart' as pulumi;

/// The type.
enum ParameterType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueString("String"),
  valueSecureString("SecureString"),
  valueInt("Int"),
  valueFloat("Float"),
  valueBool("Bool"),
  valueArray("Array"),
  valueObject("Object"),
  valueSecureObject("SecureObject");

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
