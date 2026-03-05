/// The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only.
enum VirtualNetworkType {
  valueNone("None"),
  valueExternal("External"),
  valueInternal("Internal");

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

