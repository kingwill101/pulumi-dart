import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination Type.
enum DestinationType implements pulumi.PulumiEnum<String> {
  fQDN("FQDN"),
  fQDNTag("FQDNTag"),
  iPAddress("IPAddress"),
  privateNetwork("PrivateNetwork");

  const DestinationType(this.wireValue);
  @override
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
