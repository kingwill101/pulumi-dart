/// The network function type.
enum VirtualNetworkFunctionNFVIType {
  valueUnknown("Unknown"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const VirtualNetworkFunctionNFVIType(this.wireValue);
  final String wireValue;

  static VirtualNetworkFunctionNFVIType fromValue(String value) {
    for (final item in VirtualNetworkFunctionNFVIType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkFunctionNFVIType value: $value');
  }
}
