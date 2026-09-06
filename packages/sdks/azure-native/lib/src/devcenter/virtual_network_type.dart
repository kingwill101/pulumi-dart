import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the pool uses a Virtual Network managed by Microsoft or a customer provided network.
enum VirtualNetworkType implements pulumi.PulumiEnum<String> {
  valueManaged("Managed"),
  valueUnmanaged("Unmanaged");

  const VirtualNetworkType(this.wireValue);
  @override
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
