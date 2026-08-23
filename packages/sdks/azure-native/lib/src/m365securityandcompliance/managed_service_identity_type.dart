/// Type of identity being specified, currently SystemAssigned and None are allowed.
enum ManagedServiceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueNone("None");

  const ManagedServiceIdentityType(this.wireValue);
  final String wireValue;

  static ManagedServiceIdentityType fromValue(String value) {
    for (final item in ManagedServiceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServiceIdentityType value: $value');
  }
}
