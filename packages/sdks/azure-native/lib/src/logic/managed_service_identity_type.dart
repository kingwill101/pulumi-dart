/// Type of managed service identity. The type 'SystemAssigned' includes an implicitly created identity. The type 'None' will remove any identities from the resource.
enum ManagedServiceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
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

