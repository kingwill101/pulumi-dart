import 'package:pulumi/pulumi.dart' as pulumi;

enum SchemaType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAvro("Avro");

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
