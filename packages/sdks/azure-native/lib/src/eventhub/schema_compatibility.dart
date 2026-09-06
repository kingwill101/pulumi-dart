import 'package:pulumi/pulumi.dart' as pulumi;

enum SchemaCompatibility implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueBackward("Backward"),
  valueForward("Forward");

  const SchemaCompatibility(this.wireValue);
  @override
  final String wireValue;

  static SchemaCompatibility fromValue(String value) {
    for (final item in SchemaCompatibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaCompatibility value: $value');
  }
}
