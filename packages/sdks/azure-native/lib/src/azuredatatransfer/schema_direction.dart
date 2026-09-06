import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction of the schema.
enum SchemaDirection implements pulumi.PulumiEnum<String> {
  valueSend("Send"),
  valueReceive("Receive");

  const SchemaDirection(this.wireValue);
  @override
  final String wireValue;

  static SchemaDirection fromValue(String value) {
    for (final item in SchemaDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchemaDirection value: $value');
  }
}
