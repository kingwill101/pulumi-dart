/// The identity type.
enum ResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned"),
  valueUserAssigned("UserAssigned"),
  valueNone("None");

  const ResourceIdentityType(this.value);
  final String value;

  static ResourceIdentityType fromValue(String value) {
    for (final item in ResourceIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityType value: $value');
  }
}

