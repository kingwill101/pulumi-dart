/// Managed Virtual Network reference type.
enum ManagedVirtualNetworkReferenceType {
  valueManagedVirtualNetworkReference("ManagedVirtualNetworkReference");

  const ManagedVirtualNetworkReferenceType(this.value);
  final String value;

  static ManagedVirtualNetworkReferenceType fromValue(String value) {
    for (final item in ManagedVirtualNetworkReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedVirtualNetworkReferenceType value: $value');
  }
}

