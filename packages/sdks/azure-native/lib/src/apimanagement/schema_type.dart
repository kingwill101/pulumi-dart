import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema Type. Immutable.
enum SchemaType implements pulumi.PulumiEnum<String> {
  xml("xml"),
  json("json");

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
