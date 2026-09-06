import 'package:pulumi/pulumi.dart' as pulumi;

/// The language name, for example Python.
enum Language implements pulumi.PulumiEnum<String> {
  valuePython("Python");

  const Language(this.wireValue);
  @override
  final String wireValue;

  static Language fromValue(String value) {
    for (final item in Language.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Language value: $value');
  }
}
