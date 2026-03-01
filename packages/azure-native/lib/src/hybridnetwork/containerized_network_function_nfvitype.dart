/// The network function type.
enum ContainerizedNetworkFunctionNFVIType {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes");

  const ContainerizedNetworkFunctionNFVIType(this.value);
  final String value;

  static ContainerizedNetworkFunctionNFVIType fromValue(String value) {
    for (final item in ContainerizedNetworkFunctionNFVIType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerizedNetworkFunctionNFVIType value: $value');
  }
}

