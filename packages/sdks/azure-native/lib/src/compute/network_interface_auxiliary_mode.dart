/// Specifies whether the Auxiliary mode is enabled for the Network Interface resource.
enum NetworkInterfaceAuxiliaryMode {
  none("None"),
  acceleratedConnections("AcceleratedConnections"),
  floating("Floating");

  const NetworkInterfaceAuxiliaryMode(this.wireValue);
  final String wireValue;

  static NetworkInterfaceAuxiliaryMode fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliaryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliaryMode value: $value');
  }
}

