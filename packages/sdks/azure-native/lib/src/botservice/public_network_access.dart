import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the bot is in an isolated network
enum PublicNetworkAccess implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled"),
  securedByPerimeter("SecuredByPerimeter");

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
