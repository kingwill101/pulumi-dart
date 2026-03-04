/// The protocol associated with the port.
enum ContainerNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ContainerNetworkProtocol(this.wireValue);
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
