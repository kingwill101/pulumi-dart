import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the SKU, in standard format (such as G2).
enum Name implements pulumi.PulumiEnum<String> {
  valueG2("G2");

  const Name(this.wireValue);
  @override
  final String wireValue;

  static Name fromValue(String value) {
    for (final item in Name.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Name value: $value');
  }
}
