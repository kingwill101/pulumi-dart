/// VPN authentication types enabled for the VpnServerConfiguration.
enum VpnAuthenticationType {
  valueCertificate("Certificate"),
  valueRadius("Radius"),
  valueAAD("AAD");

  const VpnAuthenticationType(this.value);
  final String value;

  static VpnAuthenticationType fromValue(String value) {
    for (final item in VpnAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnAuthenticationType value: $value');
  }
}

