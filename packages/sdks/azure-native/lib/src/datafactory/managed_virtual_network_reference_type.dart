/// Managed Virtual Network reference type.
enum ManagedVirtualNetworkReferenceType {
  valueManagedVirtualNetworkReference("ManagedVirtualNetworkReference");

  const ManagedVirtualNetworkReferenceType(this.wireValue);
  final String wireValue;

  static ManagedVirtualNetworkReferenceType fromValue(String value) {
    for (final item in ManagedVirtualNetworkReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedVirtualNetworkReferenceType value: $value',
    );
  }
}
