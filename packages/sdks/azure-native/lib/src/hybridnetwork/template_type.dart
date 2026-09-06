import 'package:pulumi/pulumi.dart' as pulumi;

/// The template type.
enum TemplateType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueArmTemplate("ArmTemplate");

  const TemplateType(this.wireValue);
  @override
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
