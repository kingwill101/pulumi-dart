/// The type of identity used for the cache
enum CacheIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned, UserAssigned"),
  valueNone("None");

  const CacheIdentityType(this.value);
  final String value;

  static CacheIdentityType fromValue(String value) {
    for (final item in CacheIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheIdentityType value: $value');
  }
}

