import 'package:pulumi/pulumi.dart' as pulumi;

/// The cassandra connector offer type for the Cosmos DB database C* account.
enum ConnectorOffer implements pulumi.PulumiEnum<String> {
  valueSmall("Small");

  const ConnectorOffer(this.wireValue);
  @override
  final String wireValue;

  static ConnectorOffer fromValue(String value) {
    for (final item in ConnectorOffer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorOffer value: $value');
  }
}
