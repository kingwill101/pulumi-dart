import 'package:pulumi/pulumi.dart' as pulumi;

/// The network function type.
enum NetworkFunctionType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueVirtualNetworkFunction("VirtualNetworkFunction"),
  valueContainerizedNetworkFunction("ContainerizedNetworkFunction");

  const NetworkFunctionType(this.wireValue);
  @override
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
