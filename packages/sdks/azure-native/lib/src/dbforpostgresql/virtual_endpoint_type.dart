/// Type of endpoint for the virtual endpoints.
enum VirtualEndpointType {
  readWrite("ReadWrite");

  const VirtualEndpointType(this.wireValue);
  final String wireValue;

  static VirtualEndpointType fromValue(String value) {
    for (final item in VirtualEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualEndpointType value: $value');
  }
}

