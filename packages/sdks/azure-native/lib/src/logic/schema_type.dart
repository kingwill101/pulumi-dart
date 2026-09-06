import 'package:pulumi/pulumi.dart' as pulumi;

/// The schema type.
enum SchemaType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueXml("Xml");

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
