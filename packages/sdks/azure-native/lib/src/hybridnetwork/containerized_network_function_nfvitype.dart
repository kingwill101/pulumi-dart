/// The network function type.
enum ContainerizedNetworkFunctionNFVIType {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes");

  const ContainerizedNetworkFunctionNFVIType(this.wireValue);
  final String wireValue;

  static ContainerizedNetworkFunctionNFVIType fromValue(String value) {
    for (final item in ContainerizedNetworkFunctionNFVIType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerizedNetworkFunctionNFVIType value: $value');
  }
}
