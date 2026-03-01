/// The network function type.
enum VirtualNetworkFunctionNFVIType {
  valueUnknown("Unknown"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const VirtualNetworkFunctionNFVIType(this.value);
  final String value;

  static VirtualNetworkFunctionNFVIType fromValue(String value) {
    for (final item in VirtualNetworkFunctionNFVIType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkFunctionNFVIType value: $value');
  }
}

