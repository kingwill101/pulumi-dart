/// Whether the bot is in an isolated network
enum PublicNetworkAccess {
  enabled("Enabled"),
  disabled("Disabled"),
  securedByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccess(this.wireValue);
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
