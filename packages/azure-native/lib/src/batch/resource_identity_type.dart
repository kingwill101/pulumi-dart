/// The type of identity used for the Batch account.
enum ResourceIdentityType {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  none("None");

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

