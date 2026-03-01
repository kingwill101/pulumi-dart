/// Vpn link connection mode.
enum VpnLinkConnectionMode {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VpnLinkConnectionMode(this.value);
  final String value;

  static VpnLinkConnectionMode fromValue(String value) {
    for (final item in VpnLinkConnectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnLinkConnectionMode value: $value');
  }
}

