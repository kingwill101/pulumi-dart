/// Type of managed service identity.
enum ManagedServiceIdentityType {
  valueUserAssigned("UserAssigned");

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

