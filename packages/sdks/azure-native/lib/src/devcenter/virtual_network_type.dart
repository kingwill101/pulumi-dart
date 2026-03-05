/// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
enum VirtualNetworkType {
  valueManaged("Managed"),
  valueUnmanaged("Unmanaged");

  const VirtualNetworkType(this.wireValue);
  final String wireValue;

  static VirtualNetworkType fromValue(String value) {
    for (final item in VirtualNetworkType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkType value: $value');
  }
}

