/// Type of endpoint for the virtual endpoints.
enum VirtualEndpointType {
  readWrite("ReadWrite");

  const VirtualEndpointType(this.value);
  final String value;

  static VirtualEndpointType fromValue(String value) {
    for (final item in VirtualEndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualEndpointType value: $value');
  }
}

