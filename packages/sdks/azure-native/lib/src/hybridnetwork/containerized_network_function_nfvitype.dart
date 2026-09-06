import 'package:pulumi/pulumi.dart' as pulumi;

/// The network function type.
enum ContainerizedNetworkFunctionNFVIType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes");

  const ContainerizedNetworkFunctionNFVIType(this.wireValue);
  @override
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
