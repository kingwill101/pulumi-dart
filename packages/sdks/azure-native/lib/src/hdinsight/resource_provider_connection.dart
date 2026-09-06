import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction for the resource provider connection.
enum ResourceProviderConnection implements pulumi.PulumiEnum<String> {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const ResourceProviderConnection(this.wireValue);
  @override
  final String wireValue;

  static ResourceProviderConnection fromValue(String value) {
    for (final item in ResourceProviderConnection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderConnection value: $value');
  }
}
