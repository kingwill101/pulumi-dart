/// Allowed data types for Resource Manager template parameters.
enum TemplateParameterType {
  valueString("string"),
  valueArray("array"),
  valueBool("bool"),
  valueInt("int"),
  valueObject("object"),
  valueSecureObject("secureObject"),
  valueSecureString("secureString");

  const TemplateParameterType(this.wireValue);
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

