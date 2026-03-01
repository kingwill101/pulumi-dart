/// The protocol associated with the port.
enum ContainerGroupNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerGroupNetworkProtocol(this.value);
  final String value;

  static ContainerGroupNetworkProtocol fromValue(String value) {
    for (final item in ContainerGroupNetworkProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupNetworkProtocol value: $value');
  }
}

