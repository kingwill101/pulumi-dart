enum ResourceIdentityTypes {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const ResourceIdentityTypes(this.wireValue);
  final String wireValue;

  static ResourceIdentityTypes fromValue(String value) {
    for (final item in ResourceIdentityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityTypes value: $value');
  }
}
