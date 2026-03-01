/// Values can be SystemAssigned or UserAssigned
enum CmkIdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const CmkIdentityType(this.value);
  final String value;

  static CmkIdentityType fromValue(String value) {
    for (final item in CmkIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CmkIdentityType value: $value');
  }
}

