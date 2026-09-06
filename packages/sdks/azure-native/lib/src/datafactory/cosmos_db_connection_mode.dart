import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection mode used to access CosmosDB account. Type: string.
enum CosmosDbConnectionMode implements pulumi.PulumiEnum<String> {
  gateway("Gateway"),
  direct("Direct");

  const CosmosDbConnectionMode(this.wireValue);
  @override
  final String wireValue;

  static CosmosDbConnectionMode fromValue(String value) {
    for (final item in CosmosDbConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CosmosDbConnectionMode value: $value');
  }
}
