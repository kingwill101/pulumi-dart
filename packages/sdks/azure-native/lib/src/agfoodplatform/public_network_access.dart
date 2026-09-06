import 'package:pulumi/pulumi.dart' as pulumi;

/// Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
enum PublicNetworkAccess implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const PublicNetworkAccess(this.wireValue);
  @override
  final String wireValue;

  static PublicNetworkAccess fromValue(String value) {
    for (final item in PublicNetworkAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccess value: $value');
  }
}
