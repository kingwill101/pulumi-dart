/// The template type.
enum TemplateType {
  valueUnknown("Unknown"),
  valueArmTemplate("ArmTemplate");

  const TemplateType(this.wireValue);
  final String wireValue;

  static TemplateType fromValue(String value) {
    for (final item in TemplateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateType value: $value');
  }
}

