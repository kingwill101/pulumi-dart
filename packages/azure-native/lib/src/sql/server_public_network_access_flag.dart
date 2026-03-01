/// Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
enum ServerPublicNetworkAccessFlag {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const ServerPublicNetworkAccessFlag(this.value);
  final String value;

  static ServerPublicNetworkAccessFlag fromValue(String value) {
    for (final item in ServerPublicNetworkAccessFlag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerPublicNetworkAccessFlag value: $value');
  }
}

