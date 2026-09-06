import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension name.
enum LanguageExtensionName implements pulumi.PulumiEnum<String> {
  valuePYTHON("PYTHON"),
  valueR("R");

  const LanguageExtensionName(this.wireValue);
  @override
  final String wireValue;

  static LanguageExtensionName fromValue(String value) {
    for (final item in LanguageExtensionName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageExtensionName value: $value');
  }
}
