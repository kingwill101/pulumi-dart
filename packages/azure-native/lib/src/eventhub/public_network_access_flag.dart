/// This determines if traffic is allowed over public network. By default it is enabled. If value is SecuredByPerimeter then Inbound and Outbound communication is controlled by the network security perimeter and profile's access rules.
enum PublicNetworkAccessFlag {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueSecuredByPerimeter("SecuredByPerimeter");

  const PublicNetworkAccessFlag(this.value);
  final String value;

  static PublicNetworkAccessFlag fromValue(String value) {
    for (final item in PublicNetworkAccessFlag.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicNetworkAccessFlag value: $value');
  }
}

