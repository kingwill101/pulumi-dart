/// Allowed data types for Resource Manager template parameters.
enum TemplateParameterType {
  valueString("string"),
  valueArray("array"),
  valueBool("bool"),
  valueInt("int"),
  valueObject("object"),
  valueSecureObject("secureObject"),
  valueSecureString("secureString");

  const TemplateParameterType(this.value);
  final String value;

  static TemplateParameterType fromValue(String value) {
    for (final item in TemplateParameterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateParameterType value: $value');
  }
}

