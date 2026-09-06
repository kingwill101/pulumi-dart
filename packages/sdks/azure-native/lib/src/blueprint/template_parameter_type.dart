import 'package:pulumi/pulumi.dart' as pulumi;

/// Allowed data types for Resource Manager template parameters.
enum TemplateParameterType implements pulumi.PulumiEnum<String> {
  valueString("string"),
  valueArray("array"),
  valueBool("bool"),
  valueInt("int"),
  valueObject("object"),
  valueSecureObject("secureObject"),
  valueSecureString("secureString");

  const TemplateParameterType(this.wireValue);
  @override
  final String wireValue;

  static TemplateParameterType fromValue(String value) {
    for (final item in TemplateParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateParameterType value: $value');
  }
}
