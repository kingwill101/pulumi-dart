import 'package:pulumi/pulumi.dart' as pulumi;

/// Extension. Example: NoExtension | NPB.
enum Extension implements pulumi.PulumiEnum<String> {
  valueNoExtension("NoExtension"),
  valueNPB("NPB");

  const Extension(this.wireValue);
  @override
  final String wireValue;

  static Extension fromValue(String value) {
    for (final item in Extension.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Extension value: $value');
  }
}
