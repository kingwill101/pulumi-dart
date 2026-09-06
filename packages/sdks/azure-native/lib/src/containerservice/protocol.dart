import 'package:pulumi/pulumi.dart' as pulumi;

/// The network protocol of the port.
enum Protocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP");

  const Protocol(this.wireValue);
  @override
  final String wireValue;

  static Protocol fromValue(String value) {
    for (final item in Protocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Protocol value: $value');
  }
}
