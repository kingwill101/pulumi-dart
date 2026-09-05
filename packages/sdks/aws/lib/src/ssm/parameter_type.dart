import 'package:pulumi/pulumi.dart' as pulumi;

enum ParameterType implements pulumi.PulumiEnum<String> {
  valueString("String"),
  valueStringList("StringList"),
  valueSecureString("SecureString");

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
