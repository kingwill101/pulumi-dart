/// The type of managed identity assigned to this resource.
enum ManagedIdentityType {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAndUserAssigned("SystemAssigned,UserAssigned");

  const ManagedIdentityType(this.wireValue);
  final String wireValue;

  static ManagedIdentityType fromValue(String value) {
    for (final item in ManagedIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityType value: $value');
  }
}

