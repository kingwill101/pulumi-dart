import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol associated with the port.
enum ContainerGroupNetworkProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerGroupNetworkProtocol(this.wireValue);
  @override
  final String wireValue;

  static ContainerGroupNetworkProtocol fromValue(String value) {
    for (final item in ContainerGroupNetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupNetworkProtocol value: $value');
  }
}
