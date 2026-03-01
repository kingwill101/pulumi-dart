/// The identity type. This is the only required field when adding a system or user assigned identity to a resource.
enum ResourceIdentityType {
  valueSystemAssigned("SystemAssigned"),
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

