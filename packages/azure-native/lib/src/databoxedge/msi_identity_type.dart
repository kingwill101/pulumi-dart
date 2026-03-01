/// Identity type
enum MsiIdentityType {
  valueNone("None"),
  valueSystemAssigned("SystemAssigned"),
  valueUserAssigned("UserAssigned");

  const MsiIdentityType(this.value);
  final String value;

  static MsiIdentityType fromValue(String value) {
    for (final item in MsiIdentityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MsiIdentityType value: $value');
  }
}

