/// Destination Type.
enum DestinationType {
  fQDN("FQDN"),
  fQDNTag("FQDNTag"),
  iPAddress("IPAddress"),
  privateNetwork("PrivateNetwork");

  const DestinationType(this.wireValue);
  final String wireValue;

  static DestinationType fromValue(String value) {
    for (final item in DestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationType value: $value');
  }
}
