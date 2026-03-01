/// Managed identity.
enum ManagedIdentityType {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ManagedIdentityType(this.value);
  final String value;

  static ManagedIdentityType fromValue(String value) {
    for (final item in ManagedIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityType value: $value');
  }
}

