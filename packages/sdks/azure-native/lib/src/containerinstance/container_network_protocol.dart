/// The protocol associated with the port.
enum ContainerNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerNetworkProtocol(this.value);
  final String value;

  static ContainerNetworkProtocol fromValue(String value) {
    for (final item in ContainerNetworkProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerNetworkProtocol value: $value');
  }
}

