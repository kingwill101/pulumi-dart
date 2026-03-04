/// The identity type.
enum ResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned"),
  valueUserAssigned("UserAssigned"),
  valueNone("None");

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
