import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the schema.
enum SchemaType implements pulumi.PulumiEnum<String> {
  messageSchema("MessageSchema");

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
