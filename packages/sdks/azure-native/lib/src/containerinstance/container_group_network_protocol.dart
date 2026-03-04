/// The protocol associated with the port.
enum ContainerGroupNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerGroupNetworkProtocol(this.wireValue);
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
