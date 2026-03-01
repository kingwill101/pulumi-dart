/// VPN client protocol enabled for the virtual network gateway.
enum VpnClientProtocol {
  valueIkeV2("IkeV2"),
  valueSSTP("SSTP"),
  valueOpenVPN("OpenVPN");

  const VpnClientProtocol(this.value);
  final String value;

  static VpnClientProtocol fromValue(String value) {
    for (final item in VpnClientProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnClientProtocol value: $value');
  }
}

