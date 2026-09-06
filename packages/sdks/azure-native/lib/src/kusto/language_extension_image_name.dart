import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension image name.
enum LanguageExtensionImageName implements pulumi.PulumiEnum<String> {
  valueR("R"),
  valuePython365("Python3_6_5"),
  valuePython3108("Python3_10_8"),
  valuePython3108DL("Python3_10_8_DL"),
  valuePythonCustomImage("PythonCustomImage"),
  valuePython3117("Python3_11_7"),
  valuePython3117DL("Python3_11_7_DL");

  const LanguageExtensionImageName(this.wireValue);
  @override
  final String wireValue;

  static LanguageExtensionImageName fromValue(String value) {
    for (final item in LanguageExtensionImageName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LanguageExtensionImageName value: $value');
  }
}
