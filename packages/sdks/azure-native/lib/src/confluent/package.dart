import 'package:pulumi/pulumi.dart' as pulumi;

/// Stream governance configuration
enum Package implements pulumi.PulumiEnum<String> {
  eSSENTIALS("ESSENTIALS"),
  aDVANCED("ADVANCED");

  const Package(this.wireValue);
  @override
  final String wireValue;

  static Package fromValue(String value) {
    for (final item in Package.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Package value: $value');
  }
}
