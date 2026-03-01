/// Specifies whether the Auxiliary mode is enabled for the Network Interface
/// resource.
enum NetworkInterfaceAuxiliaryMode {
  none("None"),
  acceleratedConnections("AcceleratedConnections"),
  floating("Floating");

  const NetworkInterfaceAuxiliaryMode(this.value);
  final String value;

  static NetworkInterfaceAuxiliaryMode fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliaryMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliaryMode value: $value');
  }
}

