/// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
enum VirtualNetworkType {
  valueManaged("Managed"),
  valueUnmanaged("Unmanaged");

  const VirtualNetworkType(this.value);
  final String value;

  static VirtualNetworkType fromValue(String value) {
    for (final item in VirtualNetworkType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkType value: $value');
  }
}

