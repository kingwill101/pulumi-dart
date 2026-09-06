import 'package:pulumi/pulumi.dart' as pulumi;

/// The Schema Type
enum SchemaType implements pulumi.PulumiEnum<String> {
  valueXsd("Xsd"),
  valueZip("Zip");

  const SchemaType(this.wireValue);
  @override
  final String wireValue;

  static SchemaType fromValue(String value) {
    for (final item in SchemaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaType value: $value');
  }
}
