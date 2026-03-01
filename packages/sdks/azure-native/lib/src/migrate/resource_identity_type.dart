/// The type of identity used for the resource mover service.
enum ResourceIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

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

