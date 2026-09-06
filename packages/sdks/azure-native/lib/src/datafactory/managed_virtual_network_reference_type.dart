import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Virtual Network reference type.
enum ManagedVirtualNetworkReferenceType implements pulumi.PulumiEnum<String> {
  managedVirtualNetworkReference("ManagedVirtualNetworkReference");

  const ManagedVirtualNetworkReferenceType(this.wireValue);
  @override
  final String wireValue;

  static ManagedVirtualNetworkReferenceType fromValue(String value) {
    for (final item in ManagedVirtualNetworkReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedVirtualNetworkReferenceType value: $value');
  }
}
