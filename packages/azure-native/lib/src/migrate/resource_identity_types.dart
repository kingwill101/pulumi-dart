enum ResourceIdentityTypes {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const ResourceIdentityTypes(this.value);
  final String value;

  static ResourceIdentityTypes fromValue(String value) {
    for (final item in ResourceIdentityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceIdentityTypes value: $value');
  }
}

