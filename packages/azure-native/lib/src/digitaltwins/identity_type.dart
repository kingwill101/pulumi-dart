/// The type of managed identity used.
enum IdentityType {
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const IdentityType(this.value);
  final String value;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}

