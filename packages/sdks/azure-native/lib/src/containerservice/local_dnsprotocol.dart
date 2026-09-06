import 'package:pulumi/pulumi.dart' as pulumi;

/// Enforce TCP or prefer UDP protocol for connections from localDNS to upstream DNS server.
enum LocalDNSProtocol implements pulumi.PulumiEnum<String> {
  valuePreferUDP("PreferUDP"),
  valueForceTCP("ForceTCP");

  const LocalDNSProtocol(this.wireValue);
  @override
  final String wireValue;

  static LocalDNSProtocol fromValue(String value) {
    for (final item in LocalDNSProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSProtocol value: $value');
  }
}
