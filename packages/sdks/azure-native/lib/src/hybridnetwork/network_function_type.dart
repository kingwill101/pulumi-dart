/// The network function type.
enum NetworkFunctionType {
  valueUnknown("Unknown"),
  valueVirtualNetworkFunction("VirtualNetworkFunction"),
  valueContainerizedNetworkFunction("ContainerizedNetworkFunction");

  const NetworkFunctionType(this.wireValue);
  final String wireValue;

  static NetworkFunctionType fromValue(String value) {
    for (final item in NetworkFunctionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionType value: $value');
  }
}

