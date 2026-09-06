import 'package:pulumi/pulumi.dart' as pulumi;

/// The network function type.
enum VirtualNetworkFunctionNFVIType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const VirtualNetworkFunctionNFVIType(this.wireValue);
  @override
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
