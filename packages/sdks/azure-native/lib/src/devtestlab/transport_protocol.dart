import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol type of the port.
enum TransportProtocol implements pulumi.PulumiEnum<String> {
  tcp("Tcp"),
  udp("Udp");

  const TransportProtocol(this.wireValue);
  @override
  final String wireValue;

  static TransportProtocol fromValue(String value) {
    for (final item in TransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransportProtocol value: $value');
  }
}
