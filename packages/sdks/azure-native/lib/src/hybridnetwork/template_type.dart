/// The template type.
enum TemplateType {
  valueUnknown("Unknown"),
  valueArmTemplate("ArmTemplate");

  const TemplateType(this.value);
  final String value;

  static TemplateType fromValue(String value) {
    for (final item in TemplateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TemplateType value: $value');
  }
}

