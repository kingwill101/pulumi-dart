import 'package:pulumi/pulumi.dart' as pulumi;

/// The protocol associated with the port.
enum ContainerNetworkProtocol implements pulumi.PulumiEnum<String> {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerNetworkProtocol(this.wireValue);
  @override
  final String wireValue;

  static ContainerNetworkProtocol fromValue(String value) {
    for (final item in ContainerNetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerNetworkProtocol value: $value');
  }
}
