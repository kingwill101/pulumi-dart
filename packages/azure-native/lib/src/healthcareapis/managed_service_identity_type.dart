/// Type of identity being specified, currently SystemAssigned and None are allowed.
enum ManagedServiceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueNone("None");

  const ManagedServiceIdentityType(this.value);
  final String value;

  static ManagedServiceIdentityType fromValue(String value) {
    for (final item in ManagedServiceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServiceIdentityType value: $value');
  }
}

