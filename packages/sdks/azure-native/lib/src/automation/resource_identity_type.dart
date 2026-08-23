/// The identity type.
enum ResourceIdentityType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  none("None");

  const ResourceIdentityType(this.wireValue);
  final String wireValue;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}
