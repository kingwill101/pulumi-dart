import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of variable that this is
enum CustomParameterType implements pulumi.PulumiEnum<String> {
  bool_("Bool"),
  object_("Object"),
  string_("String");

  const CustomParameterType(this.wireValue);
  @override
  final String wireValue;

  static CustomParameterType fromValue(String value) {
    for (final item in CustomParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomParameterType value: $value');
  }
}
