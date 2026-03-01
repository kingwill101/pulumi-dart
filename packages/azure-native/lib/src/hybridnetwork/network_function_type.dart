/// The network function type.
enum NetworkFunctionType {
  valueUnknown("Unknown"),
  valueVirtualNetworkFunction("VirtualNetworkFunction"),
  valueContainerizedNetworkFunction("ContainerizedNetworkFunction");

  const NetworkFunctionType(this.value);
  final String value;

  static NetworkFunctionType fromValue(String value) {
    for (final item in NetworkFunctionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionType value: $value');
  }
}

