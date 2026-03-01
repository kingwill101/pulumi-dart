/// Destination Type.
enum DestinationType {
  fQDN("FQDN"),
  fQDNTag("FQDNTag"),
  iPAddress("IPAddress"),
  privateNetwork("PrivateNetwork");

  const DestinationType(this.value);
  final String value;

  static DestinationType fromValue(String value) {
    for (final item in DestinationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DestinationType value: $value');
  }
}

