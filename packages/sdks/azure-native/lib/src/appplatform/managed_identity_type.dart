/// Type of the managed identity
enum ManagedIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

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

